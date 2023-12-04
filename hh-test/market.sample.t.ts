import { ethers, network } from "hardhat"
import { expect, util } from "chai"

import * as utils from "./utils"

import { MarketApiTest, MarketHelper } from "../typechain-types"
import { MarketTypes, CommonTypes } from "../typechain-types/contracts/v0.8/tests/market.test.sol/MarketApiTest"
import { Contract } from "typechain"

async function main() {
    const provider = new ethers.providers.JsonRpcProvider((network.config as any).url)

    console.log(`Generating accounts...`)
    const [deployer, anyone] = [ethers.Wallet.createRandom().connect(provider), ethers.Wallet.createRandom(ethers.provider).connect(provider)]
    const clientFilAddress = utils.lotus.createWalletBLS()
    const providerFilAddress = "t01000" //default - created by lotus-miner

    console.log(`Generated:`)
    console.log({ deployer: { ethAddr: deployer.address, filAddress: utils.ethAddressToFilAddress(deployer.address) } })
    console.log({ anyone: { ethAddr: anyone.address, filAddress: utils.ethAddressToFilAddress(anyone.address) } })
    console.log({ client: { filAddress: clientFilAddress } })
    console.log({ provider: { filAddress: providerFilAddress } })

    console.log(`Funding generated wallets... (deployer, anyone and client)`)
    utils.lotus.sendFunds(utils.ethAddressToFilAddress(deployer.address), 10)
    utils.lotus.sendFunds(utils.ethAddressToFilAddress(anyone.address), 10)
    utils.lotus.sendFunds(clientFilAddress, 10)

    //Introduce artificial delay due to Filecoin's delayed execution model
    await utils.delay(60000)

    console.log(`DEBUG: clientIdAddress: ${utils.lotus.findIDAddressToBytes(clientFilAddress)}`)

    console.log(`Deploying contracts... (market and helper)`)
    const MarketContractFactory = await ethers.getContractFactory("MarketApiTest", deployer)
    const marketContract: MarketApiTest & Contract = await MarketContractFactory.connect(deployer).deploy()

    const HelperContractFactory = await ethers.getContractFactory("MarketHelper", deployer)
    const helperContract: MarketHelper = await HelperContractFactory.connect(deployer).deploy()

    await marketContract.deployed()
    await helperContract.deployed()

    const marketContractEthAddress = marketContract.address
    const marketContractFilAddress = utils.ethAddressToFilAddress(marketContractEthAddress)

    const helperContractEthAddress = helperContract.address
    const helperContractFilAddress = utils.ethAddressToFilAddress(helperContractEthAddress)

    console.log(`Contracts deployed:`)
    console.log({ market: { ethAddress: marketContractEthAddress, filAddress: marketContractFilAddress } })
    console.log({ helper: { ethAddress: helperContractEthAddress, filAddress: helperContractFilAddress } })

    console.log(`Setting miner control address... marketContract: ${marketContractFilAddress}`)
    utils.lotus.setControlAddress(marketContractFilAddress)

    console.log(`Funding Escrows... (client and provider)`)
    const amount = BigInt(10 ** 18)
    const txs = await Promise.resolve([
        await marketContract.add_balance({ data: utils.filAddressToBytes(clientFilAddress) }, amount, { gasLimit: 1_000_000_000, value: amount }),
        await marketContract.add_balance({ data: utils.filAddressToBytes(providerFilAddress) }, amount, { gasLimit: 1_000_000_000, value: amount }),
    ])
    for (const tx of txs) {
        tx.wait(2)
    }

    //Introduce artificial delay due to Filecoin's delayed execution model
    await utils.delay(50000)

    const balances = {
        client: await marketContract.get_balance({ data: utils.filAddressToBytes(clientFilAddress) }),
        provider: await marketContract.get_balance({ data: utils.filAddressToBytes(providerFilAddress) }),
    }
    console.log(`DEBUG:`)
    console.log({ balances: JSON.stringify(balances) })

    console.log(`Generating deal params...`)
    const deal = utils.generateDealParams(clientFilAddress, providerFilAddress)
    const serializedDealProposal = (await helperContract.serialize_deal_proposal(deal.proposal)).slice(2)
    const signedDealProposal = utils.lotus.signMessage(clientFilAddress, serializedDealProposal)

    deal.client_signature = utils.hexToBytes(signedDealProposal)

    console.log(`Publishing deal...`) //Note: Anyone can issue the publishing transaction
    const tx = await marketContract.connect(anyone).publish_storage_deals({ deals: [deal] }, { gasLimit: 1_000_000_000 })

    await tx.wait(2)

    //Introduce artificial delay due to Filecoin's delayed execution model
    await utils.delay(50000)

    console.log(`Deal published!`)

    //Asertions

    //Expected values
    const expectedDealCommitment: MarketTypes.GetDealDataCommitmentReturnStruct = {
        data: ethers.utils.hexlify(Uint8Array.from([0, ...ethers.utils.arrayify(deal.proposal.piece_cid.data)])),
        size: deal.proposal.piece_size,
    }

    //Actual values
    const dealID = await marketContract.publishedDealIds(0)
    const actualDealCommitment: MarketTypes.GetDealDataCommitmentReturnStruct = await marketContract.get_deal_data_commitment(dealID)
    const actualDealClientId = await marketContract.get_deal_client(dealID)
    const actualDealClient: CommonTypes.FilAddressStruct = await helperContract.get_address_from_id(actualDealClientId)
    const actualDealProviderId = await marketContract.get_deal_provider(dealID)
    const actualDealProvider: CommonTypes.FilAddressStruct = await helperContract.get_address_from_id(actualDealProviderId)
    const actualDealLabel: CommonTypes.DealLabelStruct = await marketContract.get_deal_label(dealID)
    const actualDealTerm: MarketTypes.GetDealTermReturnStruct = await marketContract.get_deal_term(dealID)
    const actualDealTotalPrice: CommonTypes.BigIntStruct = await marketContract.get_deal_total_price(dealID)
    const actualDealClientCollateral: CommonTypes.BigIntStruct = await marketContract.get_deal_client_collateral(dealID)
    const actualDealProviderCollateral: CommonTypes.BigIntStruct = await marketContract.get_deal_provider_collateral(dealID)

    console.log(`DEBUG:`, {
        dealID,
        actualDealClient,
        actualDealClientCollateral,
        actualDealProviderCollateral,
        actualDealProvider,
        actualDealLabel,
        actualDealTerm,
        actualDealTotalPrice,
    })

    //One way to compare the values (individually)
    expect(actualDealCommitment.data).to.eq(expectedDealCommitment.data)
    expect(actualDealCommitment.size).to.eq(expectedDealCommitment.size)

    //Second way to compare the values (jointly)
    expect(actualDealCommitment).to.eql(Object.values(expectedDealCommitment))
}

main().catch((error) => {
    console.error(error)
    process.exitCode = 1
})
