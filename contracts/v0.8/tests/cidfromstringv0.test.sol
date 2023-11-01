// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {Test} from "forge-std/Test.sol";
import {CommonTypes} from "contracts/v0.8/types/CommonTypes.sol";
import {TypeConstructor} from "contracts/v0.8/utils/TypeConstructor.sol";

contract CidFromStringV0BatchTest is Test {
    function test_cidFromStringV0FirstBatch() external {
        string memory cid = "QmY7Yh4UquoXHLPFo2XbhXkhBvFoPwmQUSa92pxnxjQuPU";
        bytes memory cidBytes = hex"12209139839E65FABEA9EFD230898AD8B574509147E48D7C1E87A33D6DA70FD2EFBF";

        CommonTypes.Cid memory cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmb1rfhsmCgB6FoBEB33dESZEyzSwuLWVAJyitTyy5JCFm";
        cidBytes = hex"1220bc576a92f0eb029f73b825ed30e5cfc49753bf49bde4aa9d15d8bd8fb28843cc";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZDfiHyW31qib5i8ppHDrvBa2D2RVhf77GPmLcnG8rfcd";
        cidBytes = hex"1220a1a69ff7a0e2abd5d2a2d082880a9e0560ca7136e98814cbaf794251056cc0a2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWAC3mQjGVy15MGjKoU7fkdyBSn5a1rv6B9mgvnuMMBwK";
        cidBytes = hex"1220742f8aa599a71b39c5e114b08d923b5f7b23f29ba34c3dfcaa8b75a72e6d6956";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdJWVjnSbtmeNmHLKw21zQHX4rauL8BS6HrfwS5At3J3S";
        cidBytes = hex"1220de52db0425bd9dcdb0def965cb5f5bcf4e9c8515864c863563dd080b57d35691";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdZP46WYN3y4d9H7LP4gmGETU9RTzAcvxYNYZLiGj717r";
        cidBytes = hex"1220e2222720a9a0297541c6687b9ea6d53e3a97739038a7b786a2aec7064e2d313d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmez53A7cD6rmESYs3FDBtdfPsBtxz6iVbzRR9ziqScK87";
        cidBytes = hex"1220f750fd3231eff2357bac2c959ce164d0e97acce7ab321b346ac2c426414b4cec";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTXfbBA9VsFUvpZ5yyc5MMp5JTMz4VYoHo2pzBEvvaLSm";
        cidBytes = hex"12204d1cd1b1fceff19696b2bedf1116cae094a0b47e42e6f4100746cc129c115a5a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXy5acuEYthozq7BjYmXqN5ya3EMeqYbpJCcsvABCaDRs";
        cidBytes = hex"12208f0e368da30ba3b2b5eda5caeb4fabaabba1e895d358cb1cd2dbd5c63a10d32a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmW8FTkzoW34CREHNpgGr5QpHjv4ks4wMKF61ZGobf2dbB";
        cidBytes = hex"122073b03d64e3f33a6b7ac78e172e6353329a1b5213b0a6d28ef2ef27716c3bab96";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmT1t6abYXCjdjyh6xbgHsKingctN6B9wXmuc86vhyJQUx";
        cidBytes = hex"1220457b89598fc3af0a94d4d7f758d4d2b4de7252dceceb55e022b746b02d3c3279";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYgga58Q4GhPqHKwGfDiujc1DMELJwWZYykVa2pCfYba3";
        cidBytes = hex"122099b697187d682bb270a9a7c8dbadf466a5a302079326f7561390a228ebc4549c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmdytp2YpGfwryMBNy9GGbXSoATFJ6LdwRSzTvywcBk6tJ";
        cidBytes = hex"1220e869bd363427494f2b4c9cdbcf49832f3232a9e22629aa78972fd4b4c477ac0b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPtXDfgdmuczXHY6eoJbes41dsJTiGhM6uARjuLUYHzcQ";
        cidBytes = hex"12201705cdb0caec47f851502958fc1a05ab406a9831df7b94f3ee0e7582ad9cbb19";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmfCLH5J64umRHGp5y8WNghnBa1zdan3XvNyiYjdjcYsRd";
        cidBytes = hex"1220fa7530cc63b0dd78d40f609b2deb416766ae7c0de17201d33bef121a08eaf1e4";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZY3pKLn4ySpZM3Cyw4btYUAfsCT8QxLXUAtiHBTGYeX2";
        cidBytes = hex"1220a65c12851d6d3863f9f0986c5246397338268300cd70a862b53cb6bccc590789";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeqWwq9ziTKh4oAAffpynpbZSCZJGrWz9GRqG95q4jf4e";
        cidBytes = hex"1220f5200e63eeb10228217664e00561b3a43ed61f2456ab0c29c3b748d953e3e7eb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQMoSEoDL64UJ7MiAFGrwTGh2LFZk5xcGfn5q8P7Yrsse";
        cidBytes = hex"12201e02d257accd59730db2419a1fb2b85c853f5bf0ab6e6f199837398a0c8413d9";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdJWLhRmhHQoekoEYNWtDskXKQuQh84beXSnssFhAdwTm";
        cidBytes = hex"1220de52ade5afee42e4ae27296cd2a9046826b8f49c7ded4b2e13846d5669f13c58";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmV1EhTVpayX3qJNvzXaU1AczrfUFRGnukfwZcj6KffGf4";
        cidBytes = hex"122063089fa286fb29832dd8ca264ab1740eb7e2f502eba203e9267045a56412d88b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaWR4iWuEYhAe6h1ohT1jL8YbS5fyVuUzvUUXjNRXxEHB";
        cidBytes = hex"1220b4cc9f86757d5a2772883aaad3d93f7e521f3d8609b3a0243d12f9430f919836";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWgrnhFTGakaVGSidB8noZ876p2Q5qBdj1HUzVN6NSDmn";
        cidBytes = hex"12207c0ac4fcae8c2f6d9a17a00d66c0b2934ba59f8f1f21a1e6d4baf14693e9b46d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRVhCkFP5y7ovGeKs4Ms1xDSXYH221sjCAHL4T1VF6m5N";
        cidBytes = hex"12202ee41b98aaf629a59cc2f275197d92bfe724a3b67d5f2d422a69c25dc2eed455";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQ9rFJSoodCoxLJrNZ7v9fB37JRYtdHs4v2gFXiYwAwSa";
        cidBytes = hex"12201af307e4c7cbaff91a9c952c593d7ebd350b5e86b73f804be86b6136b2ad71cb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmfW7avkW43SQwz3vN3LYtBGDJSUGGeTfJ8MRjimbBTPFz";
        cidBytes = hex"1220ff034b4840b9856281bacc7dee8c10815b51864a3d42ed931540f5cea2cee1ed";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmbqxg82c9AzMJn57tUV292TW2AAcrZTAeUypfd97AqM9k";
        cidBytes = hex"1220c8aa16651671a8fa5a95a667fe5fbf485fba1f7558b31a8be3c0ba52d5c3479b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWa9PhMVSxa5rkV1uoo2cf7gijEfDcv16UugrwaKgcWE7";
        cidBytes = hex"12207a527a38e94ff697136e38242cf9787bcc3f96abcfdedea5a79c3a1ab160ba74";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmY9yQupUh5oiX2CEreuzVzsrgEF9NRpbXBvfCRRs4GMUr";
        cidBytes = hex"122091d8a0e652ead68279afc599d9af6248efc59e2198ef6e552df9280369f532e7";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcpSap27xaP2UbdH4cVDddoLoExd3ztWcJCt6KBFow6JS";
        cidBytes = hex"1220d7222b4113110558449ce0aa606bb0bafb520ef8167f56f108acc00630974437";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVFKAe5m12jkQ9JahpsM42cdMXyFYRDMhZXkPq7P2MHK7";
        cidBytes = hex"122066a3cec12c21039376e1ce21272aba99f1216ea9235d45d6b3a30d825daa13ca";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaHNivymwV5KQaFWNNivp4XgHwQz89jN8oFrrTB67TMXV";
        cidBytes = hex"1220b1756cee544d99084b8d11e46dd065d4dbedc5c6490222fce3a44e4b4550c2c8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbFHkfPZYBkZPfstqmA1qWTNRLhSCqiB3MWZx9SXdGE6E";
        cidBytes = hex"1220bfc854bfcad5ab2414172af16a01f23587bafcb5fe953d7c6e11decc66e92e9b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcK15k66ekyzmxLge41ejCHifqRbqsTX4Ew8EJJd3rv8M";
        cidBytes = hex"1220cf977dc196d03e058f6943ee471cd82cdad6b140bdd900eaaf32d07a0a75f026";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZPRq2FVMbVr6iLuPmxrXafDHg6oZ5V2abWymQAN3CnKA";
        cidBytes = hex"1220a426bbfa878c077646e100fe20939c4d4225f6fea078693a09ec3da8a1f16d29";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPxN747WQSgoWgh3r42h22kpNgYvvcUAeUip2cR2n7qEU";
        cidBytes = hex"12201801d24b062c33025f145dd59122b897e0e4db1d4e5a02c232b8ceae3acb90ad";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWy4obF9ecWQG8hCWf2vBgL6z7CMRgvoiQWhtokeJjqYP";
        cidBytes = hex"12208031a5f9f85fb6ac737a921663fde3c31725b534b4c30735399c32bab4d9355c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYNyB8aEPCatLBDkBS5Ybx6Dksvek1BawmxwEEUsxmm2v";
        cidBytes = hex"1220952ce90f61df2ff2047c9ff83d602a735e889d029383df9e1ea0e09976331f6f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQqzZB1qN7dKd3Svnb9Yx52pXppJJjdvt7dM43UZFHTJW";
        cidBytes = hex"1220253ba840ae7e2012645c4a43efd22b0a12f9e4a1a63c229f1471c8db56c73fbf";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmab7MAihAkem2Mtzvw2Wq1mXBwnNSEaTUHZ2JWZ8TYhZo";
        cidBytes = hex"1220b6007ec8cec01368faef31fd5bab4b782499d62bd278d85b2f127347edbd5e66";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSfgCievame8pJAAXoWfT8FGa7VKiy1PXHSCYgwGcpkT9";
        cidBytes = hex"1220404e78b933f166537c63d9d771d1b145bfc3cce83652eee644f529172e60e1e0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWERVk9W6q9Qt9z29bUZQqDdQBcJNB8CX8F9QyKzxqJcv";
        cidBytes = hex"122075451206bc90132249564b03b522557ee37ee1c032884e49ca5fc13873dac197";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRvxPkTrudoRtWjdh4kxLKwUiboQUMD9K2MampqWZP8mc";
        cidBytes = hex"1220355ccd97a7da6c956f64b2107f0ea8d39fda292ce157fd63a259645edf6c9227";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPMTbP9JZEAkwymj325FxK6BsDfUWF7pjbySK7BBK5hYk";
        cidBytes = hex"12200f10b2ebd903680a44db4219d88f84329b5270b25397041b92386156fa1eaa51";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUeVLJfTqEiw1GGGRETbvNc5tCNj5JtydamDqYnj5bsMt";
        cidBytes = hex"12205db7f98ae06961cdea8501535322732a4f8ab94456e583a819639b7d2f456e53";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUKL6acFhPfeqF9png9ubY1Yz1cnHz5Wk7hUfu6LrE4TA";
        cidBytes = hex"122058cf7ed92c9e88ffbd60f38ba6fba9f0c99500009f5a75b469fe631531640191";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNSMGGQaaxuRm3AihovdhwLiZUWTeJdPsbyxvpjJiLkSz";
        cidBytes = hex"12200175c25717ddde125c34c22cace237e66239727d730f7369403c284a68d8c217";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcnGiM8nr7PJL7vgCgchMicYuWe8JEDPyHTrzS6bNUMng";
        cidBytes = hex"1220d693d8e412026ac8cd64d8e9b9e6cbb193138df7df0fcb2019f044f2f3a845b1";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTpdzfapqK7XkXcYiuGg6YSBJciSLe4paHZGJww4sC3xe";
        cidBytes = hex"12205175e3b01c9b88d1a1f8fc57be79a70f54d5722610c0daab687775644fd4e41b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmX9B2rCo5n2BjvLnNkV8ea4W6NucpDCjcrw8CLeE4xien";
        cidBytes = hex"122082c87fc64cea809e900a1af0adcf4efd22fe8c7184453b6efa993783927081fb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQprp21DSG5CxYFahvh4VsJR4vBBCnPKQymfMBiE69Ag8";
        cidBytes = hex"122024f151f8377dad2ed7b7aeb96202fdaf9df50e3e35c7a85b9178b954c6cc8411";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmamtqPzfaha2NoWKJ8yLo8jz9pi88sDGDM9i1CX7NChHv";
        cidBytes = hex"1220b8c3bc3e2a4a5594dee989989a11e5c91bf52843e899d8580f9ac71ec7a9fe3d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPDmSG3V2DsLWbXmfbTG1hr3qfg2TiwfXJ2SY2TuoPhR7";
        cidBytes = hex"12200d183a2de7f4530b109eba65ae8dd7476481d282702d88850f8cac2c377a71e6";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNe7F2bSU5GaDR8NCcek2yije3icbseDvvvetLYYqFETh";
        cidBytes = hex"12200478dff6f90173bd8bd53836a6bfaeb2b8d4de41b51fb33cbcd7fbd64bab9ab0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmP5RLqvnonpeHWgFYrbBkDPDAgq7THd1KEQWk1rpyuLpz";
        cidBytes = hex"12200af4dc738d5fd06d1a89ba6c93b9e9c4ed249bda464b3d736aecaf6c2d839bcb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWYNsAyuQBcEqoWMHjDgaKgmBUNmyVkambjSDWwpJ2bX1";
        cidBytes = hex"122079de8cf4a2fbcb5f82b50bdf1a1c548ece716d1124ebb152f1aca427c8d5462c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmf1WnBWw7gHRcHPjhWhgV2zBbb1vsp8VAag21GTw8pYTU";
        cidBytes = hex"1220f7afad1b4e78b4676abb3da85490d8c68bdd4b9ceff93da184a7ff1e89d263e3";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmd3obRcdBvL1iQz5Tiwd4MuTNZFMmZZsCZ4ELQhwpvHEZ";
        cidBytes = hex"1220da8e79e98559c672bfbc7247559d73095280673c7a608fbe53845a5790f801ca";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYZSDxRdsgtvFvSEJKDRDGVPnJiK4bkZkUqBSh2LCpgyA";
        cidBytes = hex"122097db4d74184496cf4bce975364e462fcf83e7a296a097621b85eb766e08e145d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVkNxc61J8kH86yTJidVQT4vj7tSHGkyjpvCWmbisnNUJ";
        cidBytes = hex"12206e15f0762c6f3953765c172c0534c580b459fcf798ccda3f4a0b12cb12fd806b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmf4Wyqnv29VUQmqQ9zHiVuHFmx4qeriGsbMUFJ6Nqj5Uk";
        cidBytes = hex"1220f874a55bef24359486eb29878879a8e33f2be250649133fea3a5dbd85bf23c49";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUqdAmWGfoC6s7mbrzkgZNxF6tNnxA1UJLtbLGzKwHM9N";
        cidBytes = hex"12206092392f3cdb7ea5674f0bc74293dbf643ae2d3a518d78a91b683cc44faaae95";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmexKzfLZ1Hm2AvVSK4ca3aJHfDjXCJND9981g6DSi6LJ6";
        cidBytes = hex"1220f6debd442216d115542b48a618750d91ef4b1b55d2c6bb6662f699518aeaf703";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeMxiNZQRLkmU8KguT1rarKzA8cXrqsQbfPSKNyttuGRr";
        cidBytes = hex"1220ee10edf25379d9ea301259c89e449f091a62c0e80e390704e0489da81136626d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdLoyAyr6dTTCtSqzZLTwHyQhLwujzakbVMGFrKD6vxPn";
        cidBytes = hex"1220dee9c621195ed2ab5633acb5c648428564836b6fba3d2ce22931936a047bbdfd";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQD7JwHVUmSAXnVynQjixjhrsCGmccRiem3bR4ELhjyWy";
        cidBytes = hex"12201bc8cdffb51b0ea33b919532214ea7e27b575d23b3007516b088100bb193cb5a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNcA4pPW2cQwt8Na1MVd81bGhYT7SEdzWeB3PXuDZvQ1r";
        cidBytes = hex"122003f8e803800f30a8ec06aaa5aabc5085841968ae227c925f111986883ca2c835";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbrTB3C6UxCfzQLQnkBMD8xXPcJFiCASgqoxhbyz3ebLW";
        cidBytes = hex"1220c8ca4f979ba70f24a95d690f2c82e9e7b1aac04008613a829ca82897571e5ebb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcBj2fofTL3xAxsZawR9My6HHejtSZrWAVNoweHjAfGJb";
        cidBytes = hex"1220cdba463e659605f71142a7a73ec3f550f5b8f21f28269d61b2a1af49846a7b58";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTo8ygxir5o5bmyVKSXHMaHA9Yen8LutoBYP2kBAN8hmh";
        cidBytes = hex"122051137fc8fbc1ab97b1f39fdc8c5a1d422d1c3a5fca149ba24cd4fc6ba5a2eec8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qme2rvBafcHXJxAcpDAFA88WzxoeFVjkuuFQaQLMaYae4x";
        cidBytes = hex"1220e92c5712fce205edf4800c40e138ad2d9d56e7eb16d986faf2dc5e0208a44651";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeBdHLTdou34ySvMmJqSUpLyCdM8nRYCn1TBFRFeXnRRQ";
        cidBytes = hex"1220eb6b266294409f97b69cabbf734dafc99e08998beaf2e794c3c043445154ff6f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXavxyG1wrMTvCc2F4edyqRQqzMAGwvMfZSzF7b8Yedy5";
        cidBytes = hex"12208961b1d7a9ab708cfdc724917fdd64f729aa8f84e75b60678c10d6fe4560a95c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPmp3AmHeE8dfjBKRc8omL7MfTh5JrgkD5fecnDKnkiPW";
        cidBytes = hex"1220154dc14eb5c2ae7849dde38a3cc12d5edb53640021cc984633ee915440d49625";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcjE683k8SRTYdWCGE4pPuZZ7sXZyfWqahiEJi7V1tYSR";
        cidBytes = hex"1220d5cc231e48420e8c36be614dcba0a8b8eacfd6096efbe6669492bdb748453b96";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPrC4o49grMKGyUn1zqgAFVEdgfNeBcyXoTUyNjPZWh7g";
        cidBytes = hex"1220166cfc4ac2d279340aaa028c6d3bfaebb68ea65574b0327e42aa719fe6a2746b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRwrNuoGs6kPVweAQUy5VaXjx3QPE8uheh3rN7u7e6nz1";
        cidBytes = hex"122035979554d13b310cce83e519bf24e9dd41aad977c4ad64e95b58eb70cd372f16";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeS3esepMDBvLPufYW8WWSf5RuQEpGs6hNwowLLQUqkM9";
        cidBytes = hex"1220ef1cd6894b1349216bae6e5f630c21f73752e4ee848f38b8c2099d0497bf136c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmbq8jZ2bnGxowpPwdskaqTZVBAaokj8t7LRoecNpsqchA";
        cidBytes = hex"1220c873e16ea4fc94312e3524347a9c6143436f61b1ef34ac575713b8ce38c95dc5";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWFUUGmDqNW2gHsRc5DTZYUCk1cQ4H5uoWS9PYW4M6wus";
        cidBytes = hex"1220758a03bf2ec170f4ae82da2669a4f7be587021d1b4099d35198e73479377673a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPbKsfQt27f4wUhFLEVrncQ2ZBKz9jTVMbQi9GVTiACbi";
        cidBytes = hex"1220129e1a1c66bf4e213e1cf03a6970b856f7553533465d87059312233c2be89821";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmesL2BBPwz8NELYKaZx8BUFngKrTzCQpeCb6NjkZd248P";
        cidBytes = hex"1220f596dd63976fa4ba1be31bca0ce35b3aac8978022188a86dcc4d1a28890c9a40";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNcP1PbvkzLxGpaYg3uCvspXKtFnP8HKLE5xkvgfv9jfF";
        cidBytes = hex"1220040789e3f5c81191a8840a1110c8b441dcda38c6847090412e595771c2eeb522";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQee87qdi1ECsFzT5quRw5vaoR5MGFKNRfsWQdjxgJJod";
        cidBytes = hex"122022532a7387533741d365e81e32ac6c20625fdd1c3db4478158de248edcf30aec";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaBWFaUqoBnqfeDSwtJmj4CQd5etdm4Ss2JfERdWtwcvb";
        cidBytes = hex"1220aff473fa08206d7c7768d96d1d21e7b3142559ba1951ab983664a7b9c3695bd0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeiHU3uei1A9apa2SBpwkGeJeM6qs7rfYf7mg7TPjFiou";
        cidBytes = hex"1220f345bff4f4612f92dd2b654fccf6566ee19989eb11ca2e926ae3422d1f97ec74";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbTm6CKcsGkBMr1zwj8rt4LwHNMGb6QzPRLY2FDg9Thcs";
        cidBytes = hex"1220c2fa35e7186edb2d65bcf837f9a26e9aabfff3081af95d52dd2a0e546c13c2b0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWLhhaBqBH7F8fBNRzo9qw1k2Px4ZLhtGaVxRSHZ7K9ii";
        cidBytes = hex"122076e0e08ad4e9592b69bc81c29bd7f0db78a924d2cd89115c0be3b7eb94bf8c43";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmV8zPT7kVfMtArnD3ujZg1agNErsRjNcq17cd9YtCpfPW";
        cidBytes = hex"1220650516d32f80975d26f6ffeaf82702ded33eb240922ec690bba467eabf9e4419";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qma4rzFrm7UzyDKH2qSxkpyUaRfGF5ACUiyvfSBNrhocWG";
        cidBytes = hex"1220ae40d55ddda3f6057477b27fc1259d727a8e0eecffce8099b79daed786e1191d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmV8MW4Yov79S2rXkmGW9wdNbiT5TbDQqWuutB6SHm2ZNq";
        cidBytes = hex"122064db61cb190be24c00d0ba8ce9bdf055a798009f451f2646b216a939c51d651a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQt4hkzHFEJdscti7GPkM7KfUGMwMFMfzwZsCeChMKG2a";
        cidBytes = hex"122025c38250f2f5019eb6b2542cb361597b14467443268caa583905be3647108ac7";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNkZJAGf7Cq7LizLsc47MdZCjsxqiVQNntGc9qWfujHwK";
        cidBytes = hex"1220061fd1aee9962e09bed57761d6b9edc7460466924fcd29fd4ea1d8a0f7c14d5e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQzP9qyS6ieCKEMFdrHUf5pPcif8VwzXjrhXWTwxdWw6k";
        cidBytes = hex"12202761dae87a6ed4a88643e7b2c71c41b4791734245834ba1f9ec7e77ed8f4cc8d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTa4MCf3LpJmxvbXdy8yPkd4sMCEu9xfqFuf6LGGia4gv";
        cidBytes = hex"12204db9b6e95c46363f74532d401af4642f7f6c0fe99a44d3990beee03e8e9a71cf";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcdhVaTfBnx1GtmhRq5X2gj9QqRPSTQMBbdKmcAfN51d7";
        cidBytes = hex"1220d461a37a3b076525c25e99e7c7a4be5f2618c404626bfe39aafc1569ef66409e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWyUqwAPoKJGwYE1LBgDtdYqRrmZZRcr7iQxHHq6YAdUn";
        cidBytes = hex"1220804cd4b6f345fd8c04c3f4ade0d291acb52b9a8c2cf3472613c396200abda9d3";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPTEBkpCVRRBr48pYNnuZ1Zy2ENKYFkmiihtiA7rKkBJw";
        cidBytes = hex"1220108b06268711ce879d74b7552424a6626419cd7fa69b211488c03a0b989fcdf0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmX9CB9dZr5XT581zg4wu82YQR8KDBDp4WFp8CX1d85vx9";
        cidBytes = hex"122082c9caa8e92534408463fa064544754080bfec7d8ab0957723036d86a031eb82";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdHNiFS2oZcDXUf8PFXoiu9qYz9bprUyoAsnvWac3CSEr";
        cidBytes = hex"1220de08791666fa29076dd85f1df328ed19c23d07ab1abdf4d5635c0cdd7123501f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmT36MiPWJsRQKiXCN6T5WUVET4tyH1g9CKaoyzCb3mvpZ";
        cidBytes = hex"122045cafb16deb06800b1e60475908fb63147db5411f079060f54989260da3a5eba";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbJw2eY1Eo93MeANxv5pL1NtdDe8PcvkV5ZAfKeE7V5pC";
        cidBytes = hex"1220c0b7389cd6a6882c7dc68cc799f073784021fa94cd38248ca966319baa209761";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZacx1kjhrxA5ojABtknWvHTFR93Y8JJANy54vsrN7Wsb";
        cidBytes = hex"1220a704b27d92ef4084190f25679ff714a5013086bf05af1ce62b8606b3629f836a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWRCCPoPDab1KLWnvtFrNpt12iwVz4C7GpSE7PmCMsWtD";
        cidBytes = hex"122078076c02b29c7a97b6e2a16d750f91df61971a58976ffd51991c61d25296b59e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPhSnKfUAMsPbm5ZQXxvMFtckv4Z7c8Yt2kGHXkhFJJX6";
        cidBytes = hex"1220142f65cd429f6530cf20258b03ab707ebd4c2a80f582898c62cca1e775567c7d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVdavwPioEiCeKeyNtGSWd4mJBG22spHksugzm4qH24Zu";
        cidBytes = hex"12206c5868da5eac864567bdf8970ef1321a83f0d749f8468182a365cc88fd76c7c8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaaZ2QsCqWsTbhgoaCKL9qh5sTuaTmTnU4UnMkKxXjq7w";
        cidBytes = hex"1220b5dbf274613286a493b6978b26663ce9e761e5536be3ba9a5d1c284b21c9be22";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmet9emExCiarwfQKxmVy6BBoGnNqXi1nw8yiBpQFWhkNx";
        cidBytes = hex"1220f5ccb89c4d9b369d70956e05330aa4392ad2a84696b46bf2d9694214cd016315";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZZQgL5DRRg6VLxyDfMrjqYJAwjDwSy8eZkqobdjV3QTp";
        cidBytes = hex"1220a6b53e01d1b8a03bba23cef83f29b16f94c8d164f5a81db854cfcffaa339729f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcJnRd1MnHtbi3KnffxxmRvnw3Hh7C5NAP5HyGJ2smquU";
        cidBytes = hex"1220cf892dfaa5affd654045fa364a3f209986144f358114e24db46a95b5253c1403";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQiUmQXHaaYBjZhyD3ebfMFDQpsdWE6LqS4QNY5gf5YVA";
        cidBytes = hex"1220234ee8b09118c0ccfebbea16e4a772f238912e909eae89c582ab1551b8203f9d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSaizzm7pcGrvvRRmFEFo6zqqhiVwAwUuT5GcMWRMwh8s";
        cidBytes = hex"12203f09bb2a73ec166a9487cc36efd0eb1ccb7d9e4aca01265673c47632fd25f058";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmfYRVGx9x51uy4c54vwbP7cwdiGuK97wUBsQPTmhcHGiJ";
        cidBytes = hex"1220ff9ab2bb963571bb72b00c170f303eed048f66f0f3513b45026dcf2d8f74b327";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qma6rirKp5joLWTgYJ8d4owE6vCghMTNeBWELCnLTsPyUQ";
        cidBytes = hex"1220aec3b1db056856f733888b9c15ec42c8ee9e8879f1ab32f7f465d3035e984925";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaTtZtA48X3jJ2Jt4MamTGUhwRntvgDbm2bDEuXwWm6fv";
        cidBytes = hex"1220b426fa725fd74371d1965140ea9dc1f0ffac240a1c16e202c2d0229d3f27a675";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZZctsB42dKbUkhjKTW3VidgGppws5VgEt99uCLs5veki";
        cidBytes = hex"1220a6c30e17cd9d4d9dfaae1d5668d1154ff18aeecb904323208fd33d50cdb7de23";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmW4DYMwCfx5JWJN3VqsgDbyZpmieyjPqc6P1ZYcSaiYS8";
        cidBytes = hex"122072a7beb1c528a3f0fabedb893d5c12b26e1ada0749f2a17bcaf56bc23697c965";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPX8Njbkk2774UHWWMUXoz3aZuBimLWxJFQHRe2qmQ6TK";
        cidBytes = hex"1220118ac6ee6d5cb689e58b6442b19171817b94aef323f78b690e997c554d8e2cc2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmc8S2mq4CDLw8Hv5ufP6KmYhW151GyuLtu5QCB2uJGW7y";
        cidBytes = hex"1220cce24fe0ed7cc783ceeaa08e7e79201dc8a31305308dd6002d6c9a34d32af9d0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNxYeWXcxaYGpXxFvyfJsDzRzqkqHbyM7i7TzpXhuAFqW";
        cidBytes = hex"122009320e068bb9912e1601f554f299e946aaa2c25fa59f29fe40d8933913f23c9d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYTKJw8uCAchBYfiRVTvVAc9erNU8ve5wQ66qUfN5BRKY";
        cidBytes = hex"12209649fff3d5bcb6f3fbd449347b50baa0e1c69625ae0c6efe42b721b4e73cc683";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXdQc8goxmWEgLajt8UbjD4nk4sTJyRM4GPfZKfNMo7AJ";
        cidBytes = hex"12208a041c1b56a47c8f5425f72c48d95b4414f1bf0dd63910464923bb44ee2e3603";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPszEiPwR7Sj2a17oe4s4cKUEoghj5fgzrTWRE1pbzyzS";
        cidBytes = hex"122016e2c5a69e29a9a31744fa6b092a22edccc6190ac25696bc2d641b9f8a38c6cb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdvrS4mNLrCDbGmRkHPqb3qtagp416T3kFWBw2UQdxjDp";
        cidBytes = hex"1220e7a24ea0284cb34ba4703142af6ac3c8b2a9f1878e2ede494f56d3cc68273247";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQAydCSUD95Wo3LZz9ViMSLXjAMYntFbB1tnf6QKsenK2";
        cidBytes = hex"12201b3cf4148129f931c92304fae61dac5023e3ef9cd774513a978746c57f07b5d1";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPKCri6HQ79TqoqBxKNuMSPVvVLV129hewH2rqE7E7XPE";
        cidBytes = hex"12200e7ce022cee701c91c89aedbacbb65d3f9ee2c2a9d7a5a4ec70d21bd29882c01";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNXx7sRqB37LQw96FDJ3wF8RwYqFUUeEpiaytVnCoAfjK";
        cidBytes = hex"122002e512fa356a30722869e7099a085865316046810a7f50e4b15d7d6c76d7ad56";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRE6HPDrsqbXkc7AGz6knWGk13egLU5LiWJQovnu5LXmQ";
        cidBytes = hex"12202ae4e954562e3504f78d538f354c517d3dae33924d968197022b94fb2b9b03bf";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmV33DXVArFWUsyqMuXXn5h4DrfVvkYet5YX9vGqjcMvG2";
        cidBytes = hex"1220637ecd8d36dc8d4ef190048344b543b96dea99ee5a3f976d210d63eac400faeb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmS1VJFQwyxKXEspxXNuTLnBbpzhoz7rkPbxJsXiNDfgEP";
        cidBytes = hex"122036861226cde8e746b58bdfbf207a9f78ff8427069d6adec30981a60daaad5b94";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qme2Stwt337ZfZzXFDwMBJPYcZrPN2AmmmJdsVHLfUfoVq";
        cidBytes = hex"1220e9112ddc952495b2c0e1020c333fa25437aced908aeb47c05aecfc238b1c2220";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmX1aer2TPs7hHzCxFrzRjsXH96L39reWQMBxCkjKdAE3t";
        cidBytes = hex"122080d68f829054b9098f8bc29e5649add2cda708780933ba3addbad320b7ba7563";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeA2Tk1jP2Bp4QLaLu7968dMqWaamoqjsvP5dvKUMVz7K";
        cidBytes = hex"1220eb023286fa2671b74cd153050119a36f68a50fc6f9020fe0bc7dd7c4fd62c0f2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWJijTV89HfkP4G2kc3z6QLGxwgf415H6RFeNQ2RHnJTZ";
        cidBytes = hex"1220765ee2086c2fcfbc8a8a8f138632d05064980319f6e9f3bd36929aa5de990d30";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmW5EfFtYTYx8LrLbPeGT7jKa6EEkFNrR2szoR8cUHCuf3";
        cidBytes = hex"122072ea97419b91d80ce55348b2b74f1b9eb1e5afe9333cfc0441d5a5b16af3f8c6";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVDrwcE68zgxYdZL4uH8rj5MrxftUnHUfpn36sLEjQtBD";
        cidBytes = hex"122066449310c6ec99821acb450ab12ec0211727b1ac587b09bc6d484399b4636094";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVMVhHfgdBK9pJ9QxqTmQh5AL68XUy2XTDBCxsmiADF6n";
        cidBytes = hex"12206839326eefca2617f16b6ff08299e05f0b36e83127cf215dbee90a7a8b1fbc57";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdwHfS35zQyha9EhCV34pSHsiNQqKNjNbwSyi1ZDAfKUC";
        cidBytes = hex"1220e7bed5d6854e75fd890db5d15f1db38800689863e2cc5d9d68af3a9a5312a2b1";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNojDaa9pZGb6G21q6Nq7CHMQJLEXgT9X2KsZNPRruyYS";
        cidBytes = hex"122006efc77bc3ff4e15a24273c096baabb7bd184e1c94bfb8ccb07fa96ce2f2a82f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmdtkka1cozRwzDLkn1RZEEMTTdRHcuXrHgbFUPK4UGYtX";
        cidBytes = hex"1220e718b8d6ee0397b77ea7d86a0bc587d871b00111826aabe0bb1c0a8c42912b70";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmY7b1sQ5717EK6bASY4Xege6FFSVrHxUvbrzMoopbZs9m";
        cidBytes = hex"1220913c24689636381f1a5f867029ad4a34b7b1306498230c82302c022a7e699104";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQwTx8Bp25s5mPhawezhRTa4DgpaMcnb9ny3BCvaHEypA";
        cidBytes = hex"122026a289a77781fd0eefcf15f856d5e012d6624a7780eefd2f9cefc143f3673df7";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaENxiLKrTjQAr5QEmdCUtVNo24EDBPVLjoW4Ja2tJvnw";
        cidBytes = hex"1220b0b0f3a6b3495f4acf7e2adae2528031f58e8bf95dc94f6eb2a8156345273d14";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWqdmbxqQ3r56t9BRHBRvmKQD8DYd6nq2MsTqsD9LABKH";
        cidBytes = hex"12207e4a46be74f9a0d124149b9e02727b5fb3c64ec63b472ab2d66e421a60257c24";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmczQkcEtv4aJX8TjXHhzx3BK9NKMavd5XXMGLEMLuo4aC";
        cidBytes = hex"1220d9afe819371b20b22613f43c60e009181efcb3e89fdc8fc949831c67290262c1";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVZKCPKa4A1XMfCoNnRTYqK7MDY1AZKp8hiam1p7sAhFi";
        cidBytes = hex"12206b404bd57f5c75d90e1c1bcc49869d8f0d894f3ea95d0594c77e6e46b4e12afd";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSVKxdxZqekoDLxqJgTTdVbp3unZFeeSeMASsm21jrnGB";
        cidBytes = hex"12203da7c66042a75fc1fc8e0c4c360746fd18f0c6417e8130dc88a1ee1ac092fd4c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmfHy8dp3UiC1h9T6UMCf1SRNtMi8LWejPakNZfprDNp9t";
        cidBytes = hex"1220fbe6c423e7d1816fe8a1e43906ea59e320def7dee8fb60c924f1227e995fdc07";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcSjD5NcoQEBtD8PKRoqyHQjbqvxsLLhBPx5YjSs3Wa8v";
        cidBytes = hex"1220d192307c4722c74af7a2c91e51f09f0018ca47d62988f354b535fee6007a8597";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNyHcYdapt3JerWCn8FNsQxLeV3bNFvmv7NLudKuMbCM2";
        cidBytes = hex"12200962a302aa01e9d3e1da57989bbb48e60c6049d8e3ea7878d345e1458da718a5";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXMe7kDXXpStF7eLGzA11jY9GXqeJxwE1muz2qcVqPg1D";
        cidBytes = hex"122085fa17e1b53ee014f13d081222381e1c1a2d05c7ee0eb8ac4115a38dd16e1e38";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmavoESN8bAwapRh7gdJet9ZYkTHckDkdkXyHpoAc3rxx6";
        cidBytes = hex"1220bb0ba0a7f32718bd7af5d507b29abce26a32a9999d08a39a59958403e1e41a1f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWBZrVWmUYqYRhBHLznAs6mKByK2QFUpC3Ddh9RfMcypN";
        cidBytes = hex"12207489c730f979a7af5985940f010177fb23553c15e2e15ee01118fdc63e2ea313";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXkRySNqP2R8izT9uLc6QPHcSjXLrEtMz7VdesKkSqqjX";
        cidBytes = hex"12208bd0b8b416ab8e3d21eeb393ca7bc875023afbbab2018174d550a4762d4cead2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeksNw55jCAUyvYSvMwY7oRfq3bUt6GU9UcNmV1e4DvTb";
        cidBytes = hex"1220f3ef416ef8d410b9dd5265d4919fbe5a8958a6889f767a44dae4b6dd103bd7aa";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmd8VVL2dX3GUXsYkhWyy7PA9tirWymGuLdVydBuoKsuGd";
        cidBytes = hex"1220dbc1e8a40a3c1332c9d98b14c0e261ba7655c9c891616497f2f0e784363b1a8a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQR1TPiV97a7LGmhsqnHGxrtAbhwgZp8u2bkkBHGpHDga";
        cidBytes = hex"12201ed527aef49cba1198cc4f84a7123d5fda96f014fe0ecb81b2caacb55a851977";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUpMYGVMi4o6nJEBCSoDvE5ZTjBYuwhpGtYxJ4z5VCMyt";
        cidBytes = hex"1220603ef86f17840d981d167e0374f128581f08f8e5a6cacd8b87300c247ec0266b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVhzxc8YfzZFguH9G4jMkwjcvV2mZpFM9hfEyWJfKouv1";
        cidBytes = hex"12206d79e6f7eb7ac00d4a8375c556abe96c2df9d4cdbfc5cd2b1204eb384d51a822";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdywwUvWrXw4D9JrdcY4DDtJ38Lu7dRwKGKXpmjydet8e";
        cidBytes = hex"1220e86d46cbdd2ce350a9aaebabeac8f69a3492e2d3c2141c9e40b1595e71ec086f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmetJm8VhPLHRkQXRZ8J5JWsKLwMAWCBTUhhcs75zyU4Ym";
        cidBytes = hex"1220f5d70586506376c9ca0c7298adb7c9c2253b4a5807aa38abd31d593cdafbe4f6";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmfHPb3N9SR1nZG1tpmHy57uSogWxz137EoqDJi8iCdsbX";
        cidBytes = hex"1220fbc0d647dfe680ff2ab32157654d1eebd44711a0f7ab21b96a225bc68eba900a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmU8mM7UmBQ4uLBTksVSD5bSHe7ZNFyomETvX3gXqNTp1r";
        cidBytes = hex"1220561aa851ae006930565578196e08949ee9e4ed04d7d71d74fb819cda2f47e92d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmW79C6BeEzPsKZLPp4UWLxtracipJKtmKkKecR2sUveXY";
        cidBytes = hex"1220736791bf02f51c7e009a641bf611febc93df4a83a8cb41493fabf9381298d897";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVcUfDnptaou89MZuBwHHbBqbfaN774i6WoWKK7VyU9vZ";
        cidBytes = hex"12206c0fbcf710b893ac4a8c00c0452b81917a22007ba84ffc79e8a66b1e3e7d46fa";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmd74XTt5cFbHBEUjvU4m5CYCAH5agVR423RZZD2o646K5";
        cidBytes = hex"1220db641a1b8f7543afd723b41342f5546f09d589a8e17dcb81e57d3cd870705c94";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmfQtWLm3XVoi3KzZGGiRp169ckSBH9UU4c2pfJovydFT8";
        cidBytes = hex"1220fdac99fa3c750e169269e6e5204b434bda3df29fde334be6612a6c6ebd3c4b23";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNbPaoMiusFp1Qb7N9cfi9Bd4XwySkLrwjEqg3F45aAp9";
        cidBytes = hex"122003c69bf0b1f40935efabac27ae820c426173bc8f1ec56df6b92388a06e200cba";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTXErz32BpnEmD4M5PmFD59xqKFTBSHrZ6uSwGtW2rZUk";
        cidBytes = hex"12204d00dc160ffb2a2f07a3ec953a36a7ee93cbc43e989bc288e4cabc64588e00e1";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPW88cJgNERbGTjubU5EbzE65eDV94qBRTYmvE2EhEB93";
        cidBytes = hex"12201148ebbf343e3572d73799ca109a3275d2620fd9a09121f8a35a10c853d344a2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcoYbE5vbgXcr9jruw2siRVfqq7QJWoRmxB8pXY7NjhQW";
        cidBytes = hex"1220d6e76166089343939a4cbb6719574a9da94fd978c9993c2e85760892abb4d353";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPxgPSvzqmYp6AnydTP6ZLfvWTX73b4dKQSym2weZdLws";
        cidBytes = hex"122018167e63cb16180f8aa7ea84377d1ef8fc69ba7471570548a724891ff02ea9da";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYQHeCAvT7xYNTkQd4de9oFLCPEFEiVrHMjzLU7HoT2ZQ";
        cidBytes = hex"122095835f1673c4a0681d97c4b5e8b12258d7f12b988b0e946a4f7841c3aa67156b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdaMyjeAoQ5NPzUMLmrPEGCA9ZWzX7nFwqmLgE8xy1VZn";
        cidBytes = hex"1220e26284989e3283cb1c8f45022ef17548c07794e9a7850d1a9eef5b1071cb317d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVLRisxeXPeyVCTbpt4pbDNHUh91bUPemKdcxFLXyP7BH";
        cidBytes = hex"122067f31fd8e007c3dd6a809a59f7a6c321ee11a9bc2bcddff6b5e83bf306ed239c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbDWoN9SUXwwtRA85xECQLrNYMyh8sGu2BSnmQgvSjStN";
        cidBytes = hex"1220bf53ebd849b6d0085857c71fe3a87d9604a12b0092b4db266a649666887986a7";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZDsCRJd8yn7jYBHnScNwinUrjsL46gsZkjRWwCVzssSC";
        cidBytes = hex"1220a1b39c66121532933c0e8982c7c4d6662b5c1a2ef0c779b23c5ccda97548415d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdeRoZuRcVxwJWskjDPj9APG1TBa6kuNfQ2ef3QJGzSP9";
        cidBytes = hex"1220e36d2a70bdf387caf429f36aa934e931d7cf2563708bb9aaa19f7563293e3cc0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbhSn1gBdufPQavUpj67q8hV6isidMoqaRpU8zCdTTBtf";
        cidBytes = hex"1220c67ba27de526c509892b4e8b17a0ceb73c7dc4a0eac9dfb524cd5eb8d92d618c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmT9ew4tTcaZik5yQUhgUrdw7Cs3DzXVLz8tbQ1Mgwzo4q";
        cidBytes = hex"122047794c648904f75f461555aa3f9a77c71ee2264bce73c00ad63a88d93eb998fe";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTZiN1iJ8UE83wAfDb5mPAggp5fSGnv9UJdYWZH1eKV7u";
        cidBytes = hex"12204da31dc21407c4258569d50dff58e07a9c65ba440953f144ad9708b6328beaa0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcfrPkSpsRzr29LCggGG8RjimypAJ1GfqiJV2Uf2GBsJP";
        cidBytes = hex"1220d4eedce86ba564840c284871d4b02bd204f1a92b68386b8c6cd0625ca3e62218";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdRkjKL8DQbDmX7HKt3rvmndhup1kZkkkbW1wjgb1ZAB9";
        cidBytes = hex"1220e02e0408870f9aad1525c9bd40a3beae2dc57a21d1e7cfaa7be91b3dade8d390";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYNGA911MyQB7pVJiWuwpfKCiqZRhjZcNr2DRsA7RPFLU";
        cidBytes = hex"122094fe883db9c5d0a07acc2f8114d398c6b37faae6f4e6ab565aebe7d62db3a851";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdqwmDdTLkMxsexepBd2x6oDzUJHcFKzsqwhjhAAnsaWn";
        cidBytes = hex"1220e6606e1391287fa9dd0295941b4933309961a1f88ec89e34af9bf8f78965b0e3";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUjHCkpJiZ1XeeSA7XAmfhw2fbvSfYbqhjwaWuR5rELR5";
        cidBytes = hex"12205ef229c80b2a9157bc5ecc44d54333fd2234ef296c44dfd9db74ded51d5f80b8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZa539hjNPbdkEBLUY5PacnPZt4aAYUNaZjaXkNRpAijx";
        cidBytes = hex"1220a6e09d676a3162cd1136fb63891cb493c75103763238c5bd7c10d0e22a207397";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPATjFSrMuiSDufq1rMoSPoT8H38End7bWv78NERZaCz6";
        cidBytes = hex"12200c3f76a04983584e04b44e5799e4a4e086c22648faca96531514517d4e079263";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaTD1Jds4JHjMb4sxkzNqDpuo681npy6mRqBTAV6GKHgT";
        cidBytes = hex"1220b3fa3eea5ff9113b1a921143b33d71e7dcaa7ddea3f40d513e6fb813182dcd90";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRhq4Kx7B9QY9TDccC9kJAeUUXfTo8mJuwNibPp2o2Pc1";
        cidBytes = hex"122031fff581ace1a99b3e0a649f9a0ad17d405889776759f4e22c1813eed8934e6e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmT6qeSz4VAAavw4svu6xf5e7HgQjij8Q2uRsMmUAgf6rd";
        cidBytes = hex"122046c0ab73c7d157adf9a3a2c372dd299aa94b0e3f28fb3f60d611bf9d23aa1db2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNUK5MtpcTFXrLJHxmi2JyAUDgBUCikLFFcKh36ARa7ZL";
        cidBytes = hex"122001f6725e65115d93d9a7dfd8cbe6d5b8d783c9e8c99dd7051b472e48e91b1db3";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmb3sDsDi3pM3gKPnERd5ZtSh2df7ZMweUVejry5UwP6Gq";
        cidBytes = hex"1220bcdb3474523f2732b920b483cfaf7c7e93e1918ce03a11d0973f521d9c290bfa";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmd57bmTdQNuVL3YifkhtYnP5yCCje7asFPdwKFpewYh2s";
        cidBytes = hex"1220dae46a96cfafbea50eef564aa8d769a696eac3b99dfdb7fcf74b8874bba3e124";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYKkANTQuw9Nfbejpi8qVPpP9wzEQC1q4CjZyMX9pbP5V";
        cidBytes = hex"122094597438910d9f55b7b1f22525f274dc1c3cf9a6ab21f9c26fc4679f66d363dc";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXfK4pLxZfiP4xDYmi1WtjKfHSFWEsxsTFD3gCvZ94VB1";
        cidBytes = hex"12208a8101e4045ea0c2634a249b7af075e271259f7c4cc6ac24fbcab5b7b7cbb6ec";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmanBfK1JFMsmmSvKjENadvZqKjYTCBtLhgaWiwXmmQiZJ";
        cidBytes = hex"1220b8d6c2ba8ca7f1a2db4d7f04daf67a1c022cae328d60473efdbb99a2dc2afb6d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZo9HhQrnwb5atq1ozEBfw4Z3egDbeRfAJr7xD8g4BfoA";
        cidBytes = hex"1220aa39f8c67345ede9535a9cb6e2cb703198b1ad7c49520ea06790360c1b3b4ead";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPMvTMBTmAD8voDU4B2JZbvcHRECxz37LH3PcNBYAY1M9";
        cidBytes = hex"12200f2f12400b4034665f733298e28d24b9805d415eaa38e4bd7c6a824ea0259558";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSwGnQf3WCUhHVUNAQgxCu483mynuTZyhiSb31cwyhttX";
        cidBytes = hex"1220444d48cf308d543cd7e89121c97b991e812e7c46ce3d7eeb146033244aa68818";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXixUKGf8dNrNxacE6bhWMADqncQuUkTTkuT1PTV29rRs";
        cidBytes = hex"12208b700b40611f477121607a8962618449a0db47f870adf7b0536ef21d36b0fad6";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qme9FrrYFhvfUr9QJbndqNKMRdMSSuTGQu33wczbtG6Jnp";
        cidBytes = hex"1220eacfc42b50a961f3e5d3c296510a9d6319d3a1ff8809eba6ae94f78bc95d615d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYLD5aVmbBdaVpaCBiLPX6UivVSwSexbzvxoLeFxNVQjF";
        cidBytes = hex"12209477e3ba145f7fea431efb5ee6e637ce8acf7f005b5896433909e2d260c07ade";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeLfLFZawvgPYo1ajtS5Bxtn9ZLJPYSJezCRiyyFCPteV";
        cidBytes = hex"1220edbbb20a44087239dc169809d00efcf9d82716f57cd2bb4030773498b2f80b8a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaL4FR17N9RKT25wWUJEhTdEEpuMucAxPnfBJaDs1SdHv";
        cidBytes = hex"1220b2254761cd93d6384e8f5a90932da34b3c6bf0c02aff19e8fc08e9ec0956de8d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPoUuXUvpZjA5VhQNxtaFEiLvSPA2EojdA67Ka2cnbTQ5";
        cidBytes = hex"122015bb48cbea5c10ba0ad4ff65ddebf9be760ccb352832f0b8cb0e0a6121cfbfa2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNSRpCVeVny9W8k1XAFhZ24W1oNY4GjtbTpRmWMW6Wmjw";
        cidBytes = hex"1220017ae78bd1ac1caa32b61670e95c28bb3bfbdd6892c71602f66ab5ba39dbac62";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYtQNTJYK7pKbPPJfpw4DchgbBvv6oWXSkVuEuPMp4ZXG";
        cidBytes = hex"12209cb73dffbac40a2d84ff4898e68aceb4baad6a678d8ee1f68c70a07d5371a8c3";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmc4D6DKiTsxzpC8xH8Y7G3cQM6gj6DESWfMKZ59BUmeGP";
        cidBytes = hex"1220cbcd5b50753544cef6ad19bb16ac6956e57dd6d2e4dfea52c535674f62564180";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNsumYbkwzsZAdHLKbCZSmfWwLmmBY4bcQC1u4dmi4Z4y";
        cidBytes = hex"12200802085d9861b4ade390dc9baeadfd43ba4f2bc3399b66156090f3fdea5ceb6e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcantNcGsLvVAxLQrcJjV5QYRJphkL6QuvPrGpqm3Z3Dq";
        cidBytes = hex"1220d3a2fe7b9b93abb5bb314b195666fd07be56585e09c10f31cbf2eaea7d54f650";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQwsApJ64esMoy6GC3QbRmGnVrd4KYBvx78B4UxY8NXcZ";
        cidBytes = hex"122026bcca9392f9d93062a37677c18072a22b9b9fd90a11707db04a132f2e40279e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPV3S77YMCBVFWzP9KmmiMzsKj5xXPGZpeGMvBD93Ypg2";
        cidBytes = hex"122011020714698a67f7cd7eddf8f1648d7d841f5285764b27516b06322b915f296b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmdw5DytSXxnTQxQy5os98FRhzKDpRiQ9Pp4nuTsUDBFXk";
        cidBytes = hex"1220e7b0c54c966ced1203fc546a1b86ecb19d4ed7a176a86ac596cfce7a74381c9f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmf3aSmeph63FCuCmps7bF2kgTL5xTB97kX94devmAtQYQ";
        cidBytes = hex"1220f836fb71e1b7fb31d1b6ef980dba63c9167497dfb147c03c0404a7c679b73a21";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTyych8MSkECNYT2saMVFLXYSyTS5hSg3MLjePYBggNeV";
        cidBytes = hex"122053da4d697f8b20916466c47b62b84591176bf54820cc9e7b631ce4706b564bfa";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPmpWtWhsfSoNByuVZk2awFEGzKWFWyWEPiW1CMkcHxmk";
        cidBytes = hex"1220154e4ba6011c6506a9a921f31de69fc90a1a74271e3173b9e4b1fa19f6b470ef";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVVgDGpg2dNiFLyc9do48h21XsyeEAYHruzny1ND8QVPH";
        cidBytes = hex"12206a51bc2dfa837e70bd04e23eedb50884f76676bb1416102a307ed9365641eec4";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUenFzh2jwB8zMSgPSnUsQm7FMMHMm3rehzGaQoY1GhkS";
        cidBytes = hex"12205dcb1cdaf4c5c88285d1b68d184fb5ba8290b13803c217b131957eba14a78a2f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPWS8SXGJSpmVqJEfexix35QGScD42KdHp2qkuNNsrf7e";
        cidBytes = hex"1220115d452ff36db9b5019ae7f14470d875d7ba87de42024899063df199807e3601";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcrUXavSdw4Ut1cgzW6UDh3DpcvTJPH2r4EdjKfeWX36q";
        cidBytes = hex"1220d7a78773182241d0dd650f7e49982dbd5a6fc3e536ea7a58423d7d9230097fba";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaKNWdX2DrfDeWY62ngLM73Yryr9iCFRSzss3B6S4KJN1";
        cidBytes = hex"1220b1f858ea18b1497b59e82e2e8a288d39f9c2cafffaa26346f69efab99170bd06";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQ11mGST3oCys9pfh6deZMR6GvfT9WKcy9mNRugA5sHke";
        cidBytes = hex"122018af906617b9ddafc173e7a70ab0201d95d906c919c4e29fe53b4eaa3593ae93";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTNk8HzQTddsoJPRKiJHxzjLSQhTXUbUhKR6L51Uwj4h8";
        cidBytes = hex"12204ad3b8a6a5a55667964a5dcbfe35d62d34afa168119aa109fd982a546af7f353";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdfQtMack5tjQUSoouitNBC7qqKd8gWfXbAjDt978McjW";
        cidBytes = hex"1220e3adb58f763bf40634ddb847bcbb039cd7d5604c525b54b89a4f9c0cc51f8b5d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);
    }

    function test_cidFromStringV0SecondBatch() external {
        string memory cid = "QmXvTzdxjNPTECkAKnNY1rZyDfkHBUacK29JYYLzUPyMub";
        bytes memory cidBytes = hex"12208e62d07b811189ede46110a5f393848d86516738b05bc4788217ad1371b0777a";

        CommonTypes.Cid memory cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmd7BcoCJtuJnf4d7K8JeG7m4TyDjV7BdxbBZWZqAsRAwm";
        cidBytes = hex"1220db6c1ef1a39009efb79c48236a264f884aae2afc49a2afc3821e582ad8aac72c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPsjgFXCgyDbND1FahWfQc7jYhtAW4pFXE3heGugixQqR";
        cidBytes = hex"122016d24f31cbe23c9c5d056906118c315bff420dcff0651ec3c5cf92f081d7223c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcdxzdfWVjCQs8WdbYEY4LKgS1zGHZ8W2J68az5sUFtqz";
        cidBytes = hex"1220d4732a629506c607ffcf20149cb97f998970f8410fa20c3fe3449a13550783e5";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXNqC4NoFbvwrLPF7mGtSAGUjSGdXirZbJR3g6BL5fBAN";
        cidBytes = hex"122086483227cf04d0f1356b1d74b5aa4650a21ebe033d44ffea47057ddf97d98c97";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaaNDYjFyphUGcAyS1PYyi4izSUBimwacJHV5PZVB5PFy";
        cidBytes = hex"1220b5cfb9f7aacb6651fa242694574dc2c3c1f804f00cad436391e9138a7fbe303c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmfHF9acJQhfC96o92UDyAaEPixhwhZxrGNe9bikSQz7mS";
        cidBytes = hex"1220fbb74b87bd202e9f126737ef4788036059211adc777de454727f69a45d610e21";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSQPp5daam8kTyYYudzfgGCspVBSeJRMpgwj8nrkgrVv1";
        cidBytes = hex"12203c643a12de49ed373a647cc36c2642d14e214dd61f087f6a91bda7d222b912aa";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRfYr4P8pfY58qdHx3VHb987ZsFphtbJZwbMoW3QL1pSk";
        cidBytes = hex"1220316a778adc0a0d38cd384ee60ba77caae9706b40c7e08f37e586b49298bd0401";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUu6xFFoyNuwZLogynuy9YLnBq8y5rh4MqSJojQn4JsDo";
        cidBytes = hex"1220617661a3600f981916f9d76f2856c2ad0db82c17ba5d64d44efd2939c10739a6";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYfrDXezKtfpuZKXRnhy1cZbumskffzL8CTS3Vu8qtS2u";
        cidBytes = hex"1220997fea7ce282215ffed02a64b7bdf796ce43cb9201ffc68b8c59c7044fc0904a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTK6dcSToiTFBk5Te6QN8rHRHkz5eLfxMwz385rHhJb1q";
        cidBytes = hex"122049e4956c27df3bb661e66772f7bbcfa097595eac26843f3275f0e0d33504ab60";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbLoQptBhgVdm13kTCGddQPnruSxJyRUEyoij6b4ThpMv";
        cidBytes = hex"1220c131c4fdd54fdafeeccf40d039bb39a02f80031f51edb239257d0879aba7fe19";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTY5368Lfr6RQNHgz5K9xZPsNpbEW9vAHhSrmC6e3azEJ";
        cidBytes = hex"12204d37549a68e6e3046889690637b7dc3fabf5e83880546524417996b1bc71862f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qme28GuqtgXm6aeXm1FtAXQguX5SLZYo3dEJAPnny8bZT4";
        cidBytes = hex"1220e8fc1fbd4050d1db3e8d8d660b93376720a5ea71c0db12e849601034162b97e7";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcDZ2fctQLp3U5ozZvkHazPPX8Pv6TcEVMJxa9rpHPfBn";
        cidBytes = hex"1220ce32210032538a66a042367bbf240228221b081c1159e591ba2f0cd808875fd9";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmexTE89d7SzhiLcx6KZY9tuuB8PmSecf7tDdBiN9752rr";
        cidBytes = hex"1220f6e6eaac4c24a3170cbcf04679ce8ee1d4c4ac3bfb32ee2f8856b6dd4bb6a82f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYPjdaYunm5JSbwqBVjj66i4jDS8K1wiVn9NSZ6z29vhw";
        cidBytes = hex"1220955f2d4c79365ed9a07dd2c1fa0954b70dff17051a3c8f04a03d41c912bb02ea";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPDz1Z2WBwgh9F8k5PuTJ3UVr5j9xAwAt7h4tehT6Fx8u";
        cidBytes = hex"12200d2671dade894549a997c3278a617194fcf5633b4bbef6fd7cdbacd1c5cfd5c6";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSiJNfsvUp527SyGytt5g6T3oPnhSRWaXxNmEXzZ82Noj";
        cidBytes = hex"122040fa885486974671dad3f02bd4a67010e46d031790591a94bfc9c7e73c26f862";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaFKdAmXMkfYzotiyokdvJ7EdWNAaw1sn9SSzVSbgZeCT";
        cidBytes = hex"1220b0eec26b2ec56a5ae56a1092073f2125964647feffa0c60553da77f46be423bc";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmdka4gXK2oNLqbDmdW93ECBSpm7ioVAYz21HQTCaD86M8";
        cidBytes = hex"1220e4fffdac8c3fcd0df54ab22a88885fcf387048f0e8c7ce27408b8dd8faf2887b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQD22j5RM2Eb7mBpRDrGy4WaE8dwRFzP2m54J28bT4qUf";
        cidBytes = hex"12201bc2d5cbf525fbaf41e17ef30263b58b4f482e357a8460341f7a4f0ae6ff739c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmafT5iuTZLwGD2ewukDZP7CT93y81oQhSz6KEV4DDXERK";
        cidBytes = hex"1220b71d21a75b9cc1e33f2bebb3e2f5575c1778e5ef816096a17c43c85b47a8e706";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQY4wgxGsLiysg1JMf9c9nVSvdPEsGennRf15bVwME9La";
        cidBytes = hex"122020a42a18a4d9de72e4ff8f8d501b368f84e358afba9d0b3e87bcc4ff787d1697";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbPU1D1D3fmdBvg3r6fVD6c3XHxScujZTHymSmY7HfqFo";
        cidBytes = hex"1220c1e0916ffa1b53df04624a2d2a84ee9d9500dfb0d0f9571de17096bcb3b7cf8a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdTHymsRzyQZyfn4smCJw2DBhQLFdDrhM9GXrdJGf4CGq";
        cidBytes = hex"1220e092ee23385075447c8d323250e4a49d9ef1adafd3c78878e7d1dc11a599549a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbgqGGuXYa2tujYGLNC1H37r2Arj8JuniDB9e1eiKUJxx";
        cidBytes = hex"1220c6537afa2af1db30ac4a491c78da8f6d2ed8d69fc52d245af40102d3cb212449";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcZUEvUwCpewwcSR5WukWRD4oTYQHfqphLmMp9N2eWKKw";
        cidBytes = hex"1220d34c549c1d1371469e4b852fbac80044ea2bdcf624204a0f87f77ee1c78f168a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeDYJb7JYNGHpc2Ddhf1UmvoC8memynwtiMrKrn3J9nYo";
        cidBytes = hex"1220ebe8aeb5be0828514b23ef56a56f998c804910c334699a57b77ca6f2ec4980d8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRM7Ep9LSnAEPdXCzr2PBh33w6sUGApc2nLTfA3ijbdCQ";
        cidBytes = hex"12202cb10ec59486bca3624c8ac4f47e3cc2ab78822dea3d7eb26731270c82b60935";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWVCxVPVbpDmvQ6FmxYTjQWngX7XGRR2AsYKN6M3VcNWS";
        cidBytes = hex"1220790e9ad48edf447ca38cd78d36f2ce8f712864f3d7c369d84b8fc59452959d97";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbjGsjRXhr8o7eEk3cwguoezDZ8ZVtANdFhdEzdnqZBmR";
        cidBytes = hex"1220c6f399cf7a936f6bae66850c1f872e481b6ff2b6a6860def5758c30e8f414f18";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmdm6UcQUbR7m4s6rm851HRQxepWvKUbJCmtRnty4NM6f9";
        cidBytes = hex"1220e52260e664d45d0a53c4ba95b772529fd4dabc550e3d70f9fc8e13e062dd9728";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qme5a2GcUnvJGwkhMz2jveG9WAjmWAMjYsB7XsrXJzyL2y";
        cidBytes = hex"1220e9ddfab0c651ae44cbf57461e90af8097431f17f200cfd5afac0bae53ae80f0e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmY9YTpbaPGAiqed9ZztgcwzE11ceiMk1NE65nPLMJwCCE";
        cidBytes = hex"122091bc6aeb59899ff41b2a198b691ebb0ed37d1b288065992fbd5a6d25da8204d7";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmURWrFfsGyULgzc2CVAcy6wo3oEiat8eapHp5PHiGmLpP";
        cidBytes = hex"12205a6523888133342c55689ff941ec871a7149d3b780d0e9b20064e41901b1bad8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPFPPLtJaJFGEdtsB3ViyPUq2bSvLcXpvNP6XgN6vBj2r";
        cidBytes = hex"12200d8274e01a6256dd40bc17f11df37f54cec8eca30eb100a9ace39500ed613b13";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmf6jifN7a9qfpXpft5fqRMQrMaAyQuWx5XiZxHVxpaxiS";
        cidBytes = hex"1220f90635f5135adc5763f1970a8ea918e9310a4eeb039ea86803ad4182ca13e897";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUR9zWUjkSn5U2YvbNSqYcMDTezXVTphrkGBYEaca7nR9";
        cidBytes = hex"12205a4d8e12032de16ded5d6f9436f863b02a8117bfcc8bd90627f161357e54d36c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYUozCra1fywfBAXzCZE4mF7C3CZyWNjCmxTtXZMq6BrX";
        cidBytes = hex"122096ac01833593673240531a9154d5f3fe1dc4cc8e9200cc7877d836acc7a41ae8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmR1jMCXFXBLi8gUb2toTJsWo7jLFN6vQCVypTeZeqWfk3";
        cidBytes = hex"122027ba4576a3eaa6949460ab4e38aa85cf793a6895f403859b32165a6796cbc340";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXG24npvGdNiYnmM82E7TizQNWtsCHFhuvHfQkPoiE2Eb";
        cidBytes = hex"122084896d22583046a1ffd56b98ecfcb9d651ee785ab9d0b8e714428c15dea0e690";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmX5DAXkh5QJoVXovmPKTT8DHvvd6pPJgEQQNRfZi5E4or";
        cidBytes = hex"122081c49648ca480bba046fd48bc7ebfeceb7ab1fd9793117228b90d3fc25a225f1";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaroNeFWT2ig713LaUfovNkeBYirKLm8TRHtgmxMjKLi7";
        cidBytes = hex"1220ba0576db177139b5fba5a8f790c488bf1c5c7dbb281cf893ec7551bc4ec509ac";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZssCHGWYbjmtRVSdoBW4LWGtJbFoLLdtKgQZP2spd2Ge";
        cidBytes = hex"1220ab6fadd161222f22e0ce22aaecf3302fb23ad3c935fef3549ab47d536c111cbf";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmb4JTM1VyvRT42wUMNYF3nqBCr5vPhjZJxy8BaNHuEjMb";
        cidBytes = hex"1220bcf7bc3a460ea785ec0b568a67dde0b7a50790ec6ccc3bd414d4a6be3c74279a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVxSPHShvAteax6JXBPwrUrnGP3sww7ZKkBjf5czUPv8q";
        cidBytes = hex"1220712cc840265a7322785338ca427c9d3b419b531b0ca8660b247264320cc8f9ba";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcXVqHriQWc8x8vNVTTPdocuGNhRxH46kdoooGrLuHP5r";
        cidBytes = hex"1220d2caf837efac2373995b463dade015e7e3bc3a8772728e927018649622cdb891";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQZnk1awFSdqV1jWwkMWssNPuWidPKZUiMkh8hn4Q5oRV";
        cidBytes = hex"1220211501d2cefb2a0da849c6e99ee8d0ab6b6c26883b6ddf954cebe1437c7c6834";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRqfV32MPetodjuhFhhDHsi1237EeTyQBUoQL15DikmLD";
        cidBytes = hex"12203401c7b68e0be42fdd179d6dcc025b0aed5156fd1832b2f5db995917e728b852";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmddecBYsw3mX7PZhE6hG7NWaD6cCYRPtRXmPB5GcVh9gM";
        cidBytes = hex"1220e33a0fe9ec290a640002085b5f4a6fb30b071ba8f0f46a575426a15835a838aa";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmc2Jc7jEXFaGK2djRH6Q1iRycwbR1ioZZo8tpc6oZZUsu";
        cidBytes = hex"1220cb506e7ae2b0baa45a911f299e6f872f7fb026b7bea06d6c30755d15b20e8fd4";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdsmNeh66TzA2eijtWS6pqaVLBYoU7Dj2vk2bHXpi1WgE";
        cidBytes = hex"1220e6d7d83857f6e7467db6b2c3b6fda42f2a3f5da4f95e01b4631399cb15953967";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmW8YsUx487Aq9SBThLQUynwwCd2RcPyPw26dDaavsbcD3";
        cidBytes = hex"122073c3ec9caa5aa7ca55ce49300464d9dbade8fbfd8854a9f70df94d2a9a0b07f6";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTYyc1349P1SHJMY7uJ5Skd7EmQoJP2yubaTBafGdfpCj";
        cidBytes = hex"12204d72c4c8c83e29e662a93321fb6ccfffe9db1d86b7ee9ce27aeaf4359cf652d4";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeFftRUAM5ioSbeUtT5MYXht75a4yHXnDeP1oVqhkhvZG";
        cidBytes = hex"1220ec746b28b6bc564bd21d06f899b688b7f00384bac4baa705802541b510ee48b3";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRMQpaUVTHzoU9jhHoT9ZNCpPduuW4Y8rv1LYYavwAHzX";
        cidBytes = hex"12202cc4f019e68a186dc9b6143187cc026c004cbef87fbd8e4c47360104db3f5ef0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWjjWrb8kx4LVF34rLrSSB2qZ3ZGKW6bU9437iScpNEym";
        cidBytes = hex"12207cc749c7b453fb534df9610e2aecd41b420f865cd7b72690d009e7ca035ef888";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTMMDcbkoBxEZiAntJUwG77baa3yS8N3378meRd8siE81";
        cidBytes = hex"12204a783cef8db6873675413b33db51b9fe2cf556195f401f95d2012c8941d22752";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmaxs4iaG5uHbrP1BmohtpQEzziXDyr8NxD237WbeuiEZ5";
        cidBytes = hex"1220bb931f5bcdec88ee4102dd7e469d7218a7412dcf2faab08c40bab39c4c181ce0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRVpvwP8eU16p35rTFU9D35DJfLbqjo5zkCQvjaxrbN8g";
        cidBytes = hex"12202eecd8626055a1ae2244458f41fae4a3c6d8e71a88b48812dc96505f4b7e7ab1";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmR9RJbZb6tQfAppp92Fy22S9QJFMgsg5fhzi9SZ3NHsn3";
        cidBytes = hex"122029b283b04cece09ec66f9bd475279b522613c3015b1e49b0689c221695d53fcc";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaRAk9cjYHaSK75mbGadoyL7xvbdXgXoQuScwTH6d59cB";
        cidBytes = hex"1220b37486fc0c6f9d51c8d469bc909bdd2d82920a7a379ab8e6d5c4de2890b26918";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmavVJzGPSEaGSSEm9DZpwRKBJbP7AFY4gfurREWQbtUZC";
        cidBytes = hex"1220baf75d14e2070a0a7e882c9de7a35121417e8ec6b13542dfe6f822a6f5aecd4f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUcYWQ2n25ekGcNAGF8MgJPcL2WHhQnBcamToir1XHRqP";
        cidBytes = hex"12205d3866ead950e2d3ca0bb21a1257ed9cb75736fe75f98e67ec7c085aa1f1ab76";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQSLqiX6KadxTzM8VFjJJf9XZceBQjyHxp66xatHpvNF6";
        cidBytes = hex"12201f2ca786acd35b62fb421c0f01096804eb7ba4a97fa1b9e14719e7effde78f9d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmY4UvLzUpAwwbf8yTZ2a1J1T5g6wrGmGpXaN4fvCboNGz";
        cidBytes = hex"1220907082043ef150607f2e07fd0b5c54aa62f4cc41e8068598a8672d0ffeae1803";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdCqCCeDvYuYYSEupWZhkhwy6TVzjPL1P5sQmQ9N4U17e";
        cidBytes = hex"1220dcde831d498bce12edc69e2afe85e63a1a26880e6a7f1e7d39bb15e17310be89";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWpjRTtQXD3bt5UuQ4te9CqCdVeX685Q9XYoRuVdJeLpj";
        cidBytes = hex"12207e0f164f0e17e26294d664fe0b6732ca969521104ed42cc08333780f0842f5d4";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeTdy1HemppX1CvQ2ANqCX9MhrEpQ96z8krmAmkUPtTEb";
        cidBytes = hex"1220ef85375b65f06204f6b2e9c48ea664040b36b0ef83cfc74ac660aad72a597db4";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZ1k5oBLe6mqW17X5AiT8jKT1WkW5CZHP4NCAVr7VHMLw";
        cidBytes = hex"12209e9898e13717ca4709eb040014590d4f0368facdf2e9de53f8493fe52b2c8894";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmV1xv27wrYdm4s4AqpbyvHgNeqF4biFFz9sS7e6JZZYbx";
        cidBytes = hex"122063385ba7c8ffd49ddeca3df62d3e0dc3c18c56bff45d46f393a120345f02c1a7";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeLwr5SCdoE6ACWf4RSCYgH6wuyDT8sLeEmTAwzjKQ2zP";
        cidBytes = hex"1220edce5e405bb07fd6d66d85b6a99cb299a65be53b0ce4ae6f4d168cd9c0977b5c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUvb8ssy9EZM6Xk1vR8eF4xap64gnoQEqQX1ZvETDY7s9";
        cidBytes = hex"122061d7d44458a6294bd155401ec75bc91900afa9ab7b26a9caca89bb395ea741cc";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPggTjyep6dH9genpdfRMmimQ77APwkW4bMuKd1J79tgM";
        cidBytes = hex"122013fd48d349868330f75319a0e7e4410ce309ca0b495c13fbc1414db134555a56";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSNfs3WMosRiTMTWFu4p2bp2EFmzoHNS9GnytziSxK7YK";
        cidBytes = hex"12203bf336d9c711bbbda37282b975427bd75aaf68df947c5d90e5be80bc7579bd90";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcqB8aevUpmiBwrsHtQxcDponT3N7Lm9aD23vjXdP63ds";
        cidBytes = hex"1220d7524721a6146f19b55c8fe61590dec83a50562573971eef15c49fb0c47840ca";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSTa9xwVKAGc3sAjB1PZcbqSa7JregbitDx4MPNy42doL";
        cidBytes = hex"12203d34a9f971193df759610ddd49ac6612a1132233d2b1bb4cf97908f1a6c25827";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVKyBQNKuz7t5YmvfUraWgcJci3dbMxwfMaasHAPN1Bei";
        cidBytes = hex"122067d51ccc6155e13dddf055d7d3e36f3246466ea9be497a20dd1d74ddf5f1aa43";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmU7mhKTkYMXJeer1WtFLo8vupnzCkHsu7oHiTP1s7tiTG";
        cidBytes = hex"122055d9787a1191751a50bf098ae4b141c02acd9281b14b8b212d9dfbcb3f34d94f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRv5GiPfYofPZC6WT48y5jP9quofLjyEPD18pGqfu9Xq8";
        cidBytes = hex"12203523000352c0c19a1fe112f19f2e16bd005d7d0a8919b40e6fcb9d0c7742f1df";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPSUQqSpkC8Dtj7HtMYHi8tR43gMGvR1a1NwieXKEn3KS";
        cidBytes = hex"12201059872ebf73bcc13c99bf507346c0754cb19f167cec8bee8d2ba46fec864f8d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTZasY2CTikLER8hBgfQQbqNxB2RqGqs2Yep4Zem2XgvZ";
        cidBytes = hex"12204d9aa56a472a7c263aca1da28360895b7e89b0aa33a6e3d2c6ff957e4eb2be1e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVUfRnPYFC9S5UzyBovs9UnNouDxpM4n9NkWqHunxMgEf";
        cidBytes = hex"12206a0f4476fab9ca5cccde7aa3125f80462ac115575775966b5ce25be5ff5bcd44";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWhmzQFDSFWY4EEPcA1i55dRtrs9X4brE4FvhL7CA29FG";
        cidBytes = hex"12207c46eccc77fef71bc8b2bde843f10efb5829dc67469f140cd92eac5aab8ea0f3";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZ8rGJUFnLY7usVguov8uFDwSvPB2msrNCXSpZojPjPra";
        cidBytes = hex"1220a06aa6e0b15900ff4a5f02ac3b157012885318cb7d826979f109ca91a5beeb03";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSKkfFxEBc5rif6QUQmdoD8VkQAVCifqN9tXPHh6c6w3C";
        cidBytes = hex"12203b33e545c73cdb62a2be31219b3b4771d41e43369d237c55476bff48dcf25e2f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVuPSVZP6XrB7wqzfwdPYRQUN8wEekjE6ggbsxDidNkfu";
        cidBytes = hex"12207064b5d2c9385bee5bc0e598fde085a5190e5e7593c97e114318cab5e5e94684";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeXJPoVPkiY6JY6TvZ7m4RXXXazoodrJfCmWxoiP2b7Pm";
        cidBytes = hex"1220f07568a7bc48551f02d7606575414b5c67b3c36664afbb3145dd364b867f2a60";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdFNESfeEn2sfePXtbCyyQ2SkpcsSDLDmQTzmSQLhfmxr";
        cidBytes = hex"1220dd84c4f0cae481f80c90ec45562d48800eae6fb82d09f6435bb8d0ad7b8ba267";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmagnnqxvVgh8DMKTDTbj79PXPr3t33j8jCrJBmugKN9Gv";
        cidBytes = hex"1220b774ff4f1c4c6f537b661fd38daa3881b58af711dca6f67d272708a5ad005b83";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeF1Et9KjMdnZyiLUX9myMMMa1SZg5gbq15BuGdGyhBqY";
        cidBytes = hex"1220ec48b852c9a7b9116477c33c7c5c8f08b39de0b589e7ddaa437aacf3ea240b07";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmdw7wSmWhEbhdvyENucsdA95ZxMzCtu2xoKVsvBHHYwNR";
        cidBytes = hex"1220e7b3d72697c29a8de002ce9a796e8d321811dda530efdcdf2d344ef8e3051d4a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWDq7Xe7DzgE5y5gqydTqZy8yzcbX67hjjg3o5sVkGPds";
        cidBytes = hex"1220751e3182c0d3836f212608ee8167784f82f455f3f84f7c03f2e00a0fc11cf17a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUiLeUH4uev13rrdEhEiiREe6EQdQnipedHSQH3xRBzbX";
        cidBytes = hex"12205eb479cf3fb143b0c00fef739b7e69277cd80c714fd882f87f5e64e8648a1ec6";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQowYFLMoJ5aKUduSvETqPQv6N3azmvbV4gTcPtSoYdy5";
        cidBytes = hex"122024b515e107b8b90a374efaa21f9bef163ca0ff567759c82f2d94eff21002e6dc";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUNH1Qjpqwqd7C43Yvo5RFXUKLcKVXrK9s2nEJovzSavx";
        cidBytes = hex"12205990beba059bfda25bfd3045df4d14d61d353c5f960451d1009616fbe65b1375";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaSUvNT75maf3frSHfFvRt5jZ4MvYTpk2tN4iaWviLozo";
        cidBytes = hex"1220b3caa8f713186982af1977bf66d5daefd4bd47453a47653310a2378206546ef8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNz9GABzYVdT7xj5GRWsFZNSFeVXgRw1TPeAkuFNp4Fn6";
        cidBytes = hex"1220099ac6458fc47a5b48ae3fe416cfad8801349d43846e10234b3ea6844e7b2f37";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeKxsyeFPVh5j4yRZqo3C2NtyKTiCjTFcuoWLMkaew4AL";
        cidBytes = hex"1220ed8df481e373bbbcf36bb7ed2fd2a02988a580b3caff9621c09ca8be130b66a9";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcjvAXiwx2uFF4VY8gsMe3csAGbpkoAD2wLaRXuCQRuJU";
        cidBytes = hex"1220d5f97385f052c97965a989640498436e9b2306b068fed598e408938189d5fb55";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmY8bZgQU5rc47pcwzz7eLFCWSeFmQ1BMBfNiB9VV6UnLv";
        cidBytes = hex"1220917e57da14c2ab9e36a20f4bbd4097d95c5cb0e4762cbe57ee83ffd398844fdf";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYx1TxHBHJ5WQc9ughg1Vc489Ww5oRR82GmBUqwizBkfu";
        cidBytes = hex"12209da3aa9c8460bde27a42f3f67509db1e495e96beb52933cebe4e63e7d727e31c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUG9NA8UMLULECQA9UgTBHJyEqP5nVyPNr58WsykQFvLR";
        cidBytes = hex"122057fe9e7869306614725d6bbf0480290c2941ec144e9f5843b62ec2f7762d7f5a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbzMehUQzSwAwKyfk5nrz96ba5kKsu2nXgkq4p7iofkXU";
        cidBytes = hex"1220cad0b65f01aeab96130bd44a3d89aa42530b13acb203bf227b6a589738c3e763";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWSS5iaZt4mR4ZQaFMNXVPzKPWKMgXrSSKRsDH3UUToUY";
        cidBytes = hex"12207858b3d20626e42415a32d566e9ef03ee6841dc0e7bd432387a818a1732ca7d5";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWpzWpM5UgJKy878tJ6venHJs4KdPKsnRSHxtqQie99dY";
        cidBytes = hex"12207e2026ecb30c1ca584296b0171dc83250281e202645e19cd216bddf93da9d557";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVXSfwtnfUWVjtnjg9Ejsgb47bHJTNuu5AnJqdt5Co9tg";
        cidBytes = hex"12206ac5963b665f8a0e5429ce3e17884c010584651eda3bdd141a5a6f701fec0cf5";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPzvo7s4jfaGtHX9Ch9nRf7AWNfy7nJgEtTs4YtCNKuBw";
        cidBytes = hex"122018a9f25777a808eb7fdc5e3d002854d1721838248233eec46af7f0236c47500a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZWevk3hsCeoKJ78j9TEXhJXvp8kJJP8wZEGwGr2qT1NU";
        cidBytes = hex"1220a6009c51ec844e369d7f3089ced92da5e11d2bafab7e03111789e445246d954d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXMcEpRGvxxjiYXo2bvzPEaeYs7KAEr41YckDVRqgFgPn";
        cidBytes = hex"122085f7f84204a710f950e1cb04bd2c58ea89297b629ba1c49ba7e26a5b77fc4945";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPka6TRm8MW7M1VF7s1unDxbUuGEu9iZYNmWhrqAzFHiy";
        cidBytes = hex"122014fc6895a2bd9ac4c09d1c743c8d7d189f145db2771ea3d2748a62ce2e7065a2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWuXy27U6DhSHqxYUikEMjSjVtLFKBkP2bsut2cKyLL81";
        cidBytes = hex"12207f4a09b50ee81cd4c3259ac8bc40b47fdacfeeed4e2ceabe8e5a83388967d53a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTLradBnEn7CihK6wmk6sUdBprxFbtctNQpu2MuCQH9Uh";
        cidBytes = hex"12204a57db727bac504116e77c92bfc433702f9febb1cf59f8783b259d5d74069036";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSUyNBu6MyRsjaW4hMHne6zTvM5jXqsUCPGKtHiqPNk1y";
        cidBytes = hex"12203d907d3f67faa5c7978624e0329fd53afba1185f3e33699e1e3c5a8674df332c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRZatzjajDjopjUTxnF4ghFQ6hfvBC21VtXas9pSd6a8g";
        cidBytes = hex"12202fe34cff86c0610d33fe87a7a8f31dca72b007d09c940c6183416551d6245ec9";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRyaQThk9QyxqrEygM6nuuuiavjRNkXe4hd3ZrMpqYaA4";
        cidBytes = hex"12203608af145edac277af582dc598a0d2f8211289fcb85f8c568e33c679ab549d69";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSK7sD3QbdirBiJhPoM6RZU31NZjybpBkNSeucFAJydkP";
        cidBytes = hex"12203b0a4ae2c89ab16ce4c83927d15002294110205e1a6e80e0e428f4475e18b554";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTExF9XGb6KqDSiZmRzHRh3SXiXJKonDBGpLrN2jYhedG";
        cidBytes = hex"122048d4c6e1b4eb0db9bd8f3d3e50ad71e86eb1ad6d170b3ba61fa08a2c598f9b9b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmfAkY3L3CkkCX1BzeerQFYxuRG6dMxJ651Vn8UbwPfXu5";
        cidBytes = hex"1220fa0d752884b3fb14861afdbe4af44b8ee9894c5f4f8374288ca9e4bf3017e014";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcEBKLpjJexiWyFuGoGPxas97E9ct1eXXCJ8sCu1ZytQw";
        cidBytes = hex"1220ce5b28ca25afe5b6d42d3cd3d3705f506ef111ecb35862b8b52ffb1af8be5ad8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaRkASf1A3Ev91AD3cb2WidzvPRf9B9RtnrJW95sW23WH";
        cidBytes = hex"1220b39a50694feae3c5146d3a2aac92a19256b57cdf92baead019af5b21f4200f22";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmT4oA3E5gw1TgE7itPyYs5SHvGaHLCqru3w5rKEziKn8b";
        cidBytes = hex"1220463ab15fc48bb729925989735db089bcf22d049983c44c7f20db578179817f4c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmc4QmTpXiiMb1SgRy4D5C2T6zak4HycskZBMscxEoC2z1";
        cidBytes = hex"1220cbda8f429073b09cf874fcff08fec759af0843fee4d1e39f9ef04b63712f4506";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmY1Laq6G1Qmo1uiXVD98opsv6oBGqm7gEyo4shh3favfo";
        cidBytes = hex"12208fa256e0d65fe0d10272cf5ad008feb0ac0c5eb7face5dbd45f3fab0b39f8206";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNr39tPBJE1bJGsv5jufiX57yrRVEX718R9MxLYo4rsmW";
        cidBytes = hex"1220078738b5af1fa67b9818547b98dc7320cea02b69f83c3dcd38a00e9787cf5ef5";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSvz7xgXyP13kEaBoaPqbREXLCctVTzfJ9NLEhpA3Sx82";
        cidBytes = hex"1220443a7190eb18ee6dfb321274227a3a1761eaa28df1babe84489f466f3fa527bb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRjSGruguuHFQJKDqfrAYw3S4zRvQGg3ASvoWsyfX9oZi";
        cidBytes = hex"122032695bd9a1580cc23fba903abe667be34b5348b96ddffdf2976151390c6d32c1";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRtjFeBo4mXtUip811eq8461Z9pMi3pcjX8iWU45H3BAx";
        cidBytes = hex"122034cac8c55aa0a6c288bbfcee84cdb0a0a6a2426fa8fb863aa84a31f8892fc2b9";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQhXES58V6ocynDM3279jkpgrhhMsrNtU28oJGuEEGuGe";
        cidBytes = hex"122023101dce0780194c911c3218a26ee37f8d759834ebb0cb03983c7310941c2da3";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWcE22ZKTjByDP4cY2gkY7DdPjobwnoDSa11J5sLwbUw3";
        cidBytes = hex"12207adadec11f1651db97b6417614f20aad82880cd53d87fce472d582fb33b1301a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdHYjhmQtwLMcB2jfGwyT6vVjfghhJciRaRVQSQgW6hUc";
        cidBytes = hex"1220de13cef204f43c7febae1bb7e2a3739573258d69995abe8ebe727ec638fa8a19";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmcw94jMPdcawxYkb4Yd7YCW5zDjnC4AnztthroBNVa911";
        cidBytes = hex"1220d8d96d1e9c794a4f7d92781e20b37cd9add70f7d0aff81f1e55a2e4a762c12a8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPA2MYGAvMNQKkLLdxicNF6e7dFp4MPA36gc6Pz8jNJr2";
        cidBytes = hex"12200c22c5c657c7abc0214334de546e2cfbb3fcdd6f45758812c1ef64c96bb04e07";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaqRZhmMa6ewVXctsDEr5cwrwGKgaiB7ez4p7zZ68rufN";
        cidBytes = hex"1220b9ab393efbce024b27f64cb0d2c1f9578b282233ab7273198be1762a15682bb9";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZYKm9NiqUi3gRq9vz6XsrVsk7V5V7ATptZLTeXNX7Fm3";
        cidBytes = hex"1220a66e1a0d62e5b0bd5be323cc64e9548b9886e0cdef33c32ebc143f499dd7bce2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXfeAk9YrRdNn772oqJGo2ADquVSjmq44KxZYj1w4jyKE";
        cidBytes = hex"12208a969b375000b0fe2322e94593cf1842dca69145cc4904eb439c2c56a1ed1981";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmcyrk9yZU2En3KNmsqTo1w2T5Bz5EfVqSERwxoLesSktj";
        cidBytes = hex"1220d98bb71d570cf5f1710cb8b083f77fe2539460e108c3ebf501ebecf121ad00ac";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXKKee6WpcuQR1XAdgHyHyHMyjWYwsaxcxayLd6GFSuw9";
        cidBytes = hex"122085620cf329b89dbcbfd41ebabffd47ea13923cc4238fd9bb7b004fcaeadfa8fc";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZQfShiRzy4eWuDa7aNfQJpzNBmdYJCQ2CryhMHdX8PKA";
        cidBytes = hex"1220a477b5b7a3c81055b0993b51c0714ced4116f28b7b7ebb9d38e7c81ed56128ad";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWbM3xrTrNtHcBZwVnUHgrUM81GkoKjPDMaL4gCseNn9J";
        cidBytes = hex"12207aa13df3645c0243048aa058143fcc19d4e72bf148dabb93b9fff610256c264d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRrLXR9Df2kG7f932gnRVhiY4wtdooGE7QTHSHgURE6b8";
        cidBytes = hex"1220342dec8ae0624ef1331328da360398faf964310e0076d8f8a4ec3b1532ff3397";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQws8NurdAtz5eoPT3WSWMUQk128tqAhUPkbUi45a6Mi9";
        cidBytes = hex"122026bcbe693312fd081e493f2d33a6b41b4276f48f45ee9963f71e1e5dba36f4ba";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPzF4onG1xwVVxWdqYY51vuuikm4inuzwUCBJqayEUnEp";
        cidBytes = hex"1220187d063b5b39d22ef9ebef23440e7820e8aa97abd3e3b011835a5172c70358bd";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNqHivdtMoEXQmFcmrLcSMcgcg8W99kQYpFRKqiGqPfZ5";
        cidBytes = hex"122007561d59ddd37e744c8828ecfa8fdf7c33dd6db013eb59d753170a63f6d94bac";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmR7kb4P2FRhaecthiPEjtuL3WqwJy91M8KLfwJh8PG6mF";
        cidBytes = hex"12202945283724dec685f6ed680bbee6a053a59222a6f59980d719f8af902c399552";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTdAa7cpxyv48aLZMLya1ett3tZn4kKePz46TLQavPVKj";
        cidBytes = hex"12204e857e2ddca5c43aa7c8d2adbcfd2c70905cda115afdd00e7d73f1e38110d8ce";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmT72DxqNjNFUQ3nDUBUhhwyCHd5GgYdXLNhaw7PYeugTJ";
        cidBytes = hex"122046cca15098c8ed107af070f8cbbe056b84ecfaa12abc5c3de7999c124568a8c1";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQ23ASdNkQQv7TE56HutQicQaDjZQwLDJz1t9Gr1a4wSA";
        cidBytes = hex"122018f2ba3568bfa3c7547b52f9c79e693fe3b37ab00f9e6e682867bc110996e693";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQNuD3YFUeQCb6z5MmsjooaFTuHsaVrZ5FV855kkkfNrT";
        cidBytes = hex"12201e4aedf150c344b818629a2583fda1ceee6decd6fcbc79c7ad5774313915e568";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNVoL9of2ajm5PBJ3GMTBnyfooebpSZ5Cda1P2tHmejiv";
        cidBytes = hex"12200257f9c26b35f768937f2ca6c1a888da0a9240aff5283ae5b8ae572f21f9052f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPudtmDvV8kJ3ZwBPFiiUUqTaN2iE7KjXud9DCutzYN5A";
        cidBytes = hex"1220174eee4088ab29b72ddfae2058612ccc9528fc1285dd9a454a2515d04287dbad";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQYjFLkyNBZVenCVYoyPsPYg7k9vRac18FLLZQWKDPUwa";
        cidBytes = hex"122020cf79acf9f81b9f6e8cdf5992b2ed1aecf237507657ac05bc5a9980f2e5b159";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSHV1z2QBcDWQTFckJ8R8TyUitdRaNV6AbK96piXCQTyw";
        cidBytes = hex"12203a9f0bf867d98aa920d34ea22b5e501139dc2d6974913054d6579bb18012ff56";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVC8zv7ahKzpazSFGeqoVJrkKjkEBseiyFrdTRnagKgoE";
        cidBytes = hex"122065d3919083bd61961dee1fb2609f1bbc60a4402c2d952190d9673d74974b1415";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSjwhEnDPEj6duQNDxBGNizYaEeYNnwv8G3KCrSJzCpbJ";
        cidBytes = hex"122041664fb49281235a631430b4a8991030e0552e96108f964aa953d39c51ab5709";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdA3A8DELn6SVhruik2B6ETF89sXG9YUxecmQtVqecaU4";
        cidBytes = hex"1220dc274c363c775811b14206622f6147726b095832673a416f52579a5c45c5d60d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmduRFWwxgP38YdbeZUBryg5SMwUNozwxy1DvU9VVFBqUu";
        cidBytes = hex"1220e74440ca6d70303629e1c9e707dfb756cecae7bdd1ef6c52e277417b194de702";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZAGsy1xgXdbE998uvunqdjPbEeitLsG1aQDcZJZYon8L";
        cidBytes = hex"1220a0c810994a3bb02952c4a6401380c5dd6809545ba944626f20c3374e9957c65d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVRyF3dQGzVx7DZCPTHijdEgitJsF5tA5ReFhEgFiJZXP";
        cidBytes = hex"1220695eab1968e6eb72c01739108a66bf9c6c1faa3920467cb49abf94713eb5529a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRa4h19XyLb7EcwHgRdnXgbvRK8hVZdkRokfVFpfcqR7R";
        cidBytes = hex"12203002ba0760e6356267e2fe1763940af29a6b754d392a0334101c376b6415f004";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmR1shTb3ZK5kP8bFmcfgLN7MwKW53EKTFyZJy9qTPZRwL";
        cidBytes = hex"122027c3b6412c38ac71a19a640ee0e4697d9f6c33e11154576d437f6fcfc4c4104f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qme3CqVCtfERGs341NtbAxgq4EbabNHW5VYNuz5WQZxEDq";
        cidBytes = hex"1220e942dcd6f68c0803b717fe79793539eccf0c64296599180a8abcc67553784bf4";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVKsVUtkheERc2MHBG2wsVddCNyCgur7VUsxYxW913i4J";
        cidBytes = hex"122067ceae426825da05fc9cfe25f02a766f35393cf8aef7a3884dbb2605f42c6893";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZ9k935JM3xeET9GwyPrVCmXU4aa5sGzStgpEbdXZYaBe";
        cidBytes = hex"1220a0a54e8b64321077b7eca75bc56d136a8f1201cd554f515f1465d138548566a5";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmckyRg2gG2faFuzC91cDWMaRR1q1tD3LC9VXwte9xq53H";
        cidBytes = hex"1220d63eb82a6df90af3ce705e363fadd1a24fd5f2865ae47c60effeaa57ed2cf8c4";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQXH3GMsDt3WUh544S4SDc8fpYYYaA25NiR1mcKiBLPFq";
        cidBytes = hex"1220207042c23410c5448b173ba5dab8e1e9b0c6c30c097e7e1859244262cd9912ac";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcVjMzUQUVihaNU8dTKM8CpkHgC3wwJfpuNoQXxPd19aF";
        cidBytes = hex"1220d2571b0a99d970470205b53f62cffaebeda0fa9f0dde494f2b3f34219cf97c68";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWtUbgwiz1QPz4sUzbHXSwMV18dF5rTgMZ8aqHXUo354C";
        cidBytes = hex"12207f04a62f975d64bc393f75e368103c5be068c98b307a433d8d9e8b88115913d9";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmY7AyDbNPnxgxxb6m5DNBQVaSg7YdmNCNdidz9wAU6ymY";
        cidBytes = hex"12209120f42196e6134733e1b90a8767ae40e6c5383b963e1eda963d45d9631daa8f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmP62HhdUcjxZbc7qNwL8PA1nh6nrmFyQcNkFGxFFSQNbD";
        cidBytes = hex"12200b1c5fde9a4ee1b9aac8eb6f1fca39d5d1e3e6dedacb7b41076202bd9adea29c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYuwT1Zjz4VfnKTupdSN3xedHj4GecvPrJR8itQaeEiBc";
        cidBytes = hex"12209d1bf6b04d35eaea607ffca379133a2f83bbd3813fb195b36a34c2b32adadc63";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVjehSLpuZTw99hVqygrgvHewmYmsNvDPJavp5nnSzWgi";
        cidBytes = hex"12206de6277006d58cc40c033b08b608a965dd21f997c2b9a8a84ff24741f8ab2ceb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmd52idhEm1ZPeeQYsbpqfqS44FKw5QAwHTj227F92YSYK";
        cidBytes = hex"1220dadee58e1e963c765e31563d0a2011a418ff517010e432abb7f8e3684e1a9e04";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSvedz4uFsjWiyLEyYQN11CMDbULK1QP6vsuay9Q9dtmt";
        cidBytes = hex"122044246a342000d1e81afbe84a2fc204925ad06de8d7f81743051dbb958ebb36d7";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVjq28717TUKRkQpyVxNtsjYU9KGutiLLUN51jKf4dnYa";
        cidBytes = hex"12206df1d34ae9ed27027358d5e5b69995e6cfc9246e3a942943e1310629b54a8e8b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmX92bpzZHZb4mFGNwWagvGwUPDka9sC27WGQVj4eFBF1B";
        cidBytes = hex"122082bef738dda98fe1de0bb60f82cd9e8edc94bd442fdab47bc6ecea9539479652";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPqFLXniiH2mpxgpH9HJkfVr7AoSh917HJTFizi7mbosX";
        cidBytes = hex"1220162f1a85d3a17431de7df9549815d0596a89e444318a2245f8a8625c3b1e3d7a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeUPfdEPk3Y9cJAPGXpcZdKf3HWXcRnCSYzPp5qCXPw5w";
        cidBytes = hex"1220efb6a0dce13ae2f3fdf6bc12f7ba3a6cfa41c5940557e79ee7e62a317dbfc8e6";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdNH3mVFNPj9WmRg4mgQ1v5KqEZDv1rqJBtFsYvaBFHcP";
        cidBytes = hex"1220df49f92bf445b885de7ae2b69814d4d1337f99f673da635aba490f43b6726f74";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdoG8LXaYU6qR5DqAXNNEQPtKKAqLoBfvoa4uVX87eAT4";
        cidBytes = hex"1220e5b073b2065e3a80e8a7b847cdc2d21efc8de547821a3f666f0fed0432305133";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXYHhncLmgFHLFiVVSu7Hu9h16zFZ9NDcY3C1iv6NEvKY";
        cidBytes = hex"122088b466aaba775ec10eb1ccfe2bd76362d80bc8b648bdd97332ac36052f8936df";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWSUsBQtQM6jCQjN6YiQPJ2iuQJNx6EDum4p3mhtqaz72";
        cidBytes = hex"1220785bd9a173c96b1573aa40e53caf99cfcce4372329276a3db4bb721246b78b69";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmS2iHC5P8QGabyjinEJbZkCAMjQ2h4UxdbPptxc7dQxwC";
        cidBytes = hex"122036d6548add5d0ba48bfa13ef3a119b86084b297f221a887abea14ebfe8f88ddb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZfPUKcYbfXEaxrzFab5TeGxxw5ft8bwEKsVBbMucztoS";
        cidBytes = hex"1220a83d5cbdea4558a657a858f354fd44cce8ce8a301d48801bd9227db975879549";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTh8fGHKhZy6dZ7DWPZ1taDKAeZW23N7uiq9FfC2Pwsi9";
        cidBytes = hex"12204f89a7b4d2698ad59100f1abb3ef7bfe247989602a2bbc426cb524da58d76d8a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSM3foDzTVTM2s5nievsuC6KRGgz1Dv8kzSLF2FhmcKL7";
        cidBytes = hex"12203b88b578fcc553fc5fd78178df9cccbe1bdf70dc2088627f7b026afdb0611e14";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmW5LYth5ZpsYk7Fg3Dgq4T7UgfZHFrDDMfQ16Dh1uNc2X";
        cidBytes = hex"122072f1403fb6e8458c3a7d4f66475308237d6118b8baad484f6f2be83d0c5a81cc";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmarieWQUjiVsLaFnZfXFeafB3h61wWZWrwXpXQtW6PcJh";
        cidBytes = hex"1220ba001ebb3115369f8b30d7766f8e238228bc504d047a814ada1810367105500e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUN7pcd1PoLbfKsK7oFPE9gTDu1zCoprRF5nSEdjC342L";
        cidBytes = hex"122059865bb5db249e2315af7958a81611d39f7defe1aac4331d27ae7d28f8372c79";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNaP7fC95ttd4WwooZv19G3dYPWC9DYZrX5mJKRtGBpGV";
        cidBytes = hex"122003847fcd447351b0ed89722478c612fcaa4a5218af4b8264d457466f6c68517e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmdj5xoqFMFwv4wy91EDKD6gs5q1G3DuDB6rf4Y4Ue4KK1";
        cidBytes = hex"1220e49ea2c9c9e8e7cfd04a1196377039678bf254ddbd602ef6dcb27ecbdd05ed84";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVJsEyFX4iehWvBQQAum5RJyBEtSxykjVVbwhYWkvSnVp";
        cidBytes = hex"1220678cd126e9f2e4766157bbffb4f8871c16e9f454b095afd65797b4beb37860b3";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUYGVaypCgL9DWBftKG7SHhnups9Ju7He6TW8aPn11Bhx";
        cidBytes = hex"12205c1ff8c222dd896c3859a3579fb5692232d4c4974df784c4114dd1836ff8b6cf";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPTaJ46sELF3AbnokCA7DfBmBKeocWQa9r96jS6WoNduN";
        cidBytes = hex"122010a1c2c8dd00ad1b35367656cb103fea352379a64997041d00b8cc12c969eff5";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXEaHCNA5L53an5WUTRqwajXvhCQbPFoWHsj4Rs4DPcyc";
        cidBytes = hex"1220842ab065c617ecc1b3c671b0bd120efecdce1ab20fee2c998832a91fb057094f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaZXqcSkMaUpfeXtEEXMbZwoAG7cDFGK6yN6Vwb6B94zc";
        cidBytes = hex"1220b5990667f15e35c1fe64956264861d414883079b3e4af259b907f071c4ac61f9";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbCsrVQeg8ir2huCE5Qykwh8iU973hTG3q7SrpTTnc891";
        cidBytes = hex"1220bf2a256ad3ee23b4fb2c93d96126827203514c2fd695eca03a4256d3334ab254";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);
    }

    function test_cidFromStringV0ThirdBatch() external {
        string memory cid = "QmX5XiB2k6peaLvAMw1vD6DjcfRSpr18VZNTbCq5LscPrj";
        bytes memory cidBytes = hex"122081d98e7c4b4700fdc0c3b5fe93c503c74fd6e23093f2f7546782d917d37d07d4";

        CommonTypes.Cid memory cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdpMpgbYidT3CawxxqqsQ1KhKbTYuiH11Upe8bR3RXuno";
        cidBytes = hex"1220e5f87909a25b3e49ed24dd34abbce8ea2193980119ea7845f7a8c712e861c320";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUhe5PgBXz1iHqXnx65QYaQn82tLvw4PPgtZT181K2RWE";
        cidBytes = hex"12205e869a50ddc3bb803c13f5b0d15d04df09a3a37d309be684bbcbc28769c7b107";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmbim9BCeZWbqpRqSeYCbzHJmZUpvf2XEqFWLTyD2rdHSW";
        cidBytes = hex"1220c6d1fb15d3140087f0d3ff28878f67609a3fb84d3569aac0b24480e1957cbe57";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeCrB7vmn9sRvxk6D1w4okf2Jam82aEi1KyN7HyDKGvbY";
        cidBytes = hex"1220ebbb4f08034e08254927306d78c9e60dbf56152934aabc95ec5705cc16e0f53f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUHAMKfhc4n5YaBKQeNDPpdLruzGSbTNM4pJzTuHgNktW";
        cidBytes = hex"122058415072999b157b8275122159d34114f86ed011dc5fae68d46983cb6293fa6f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNsKaPK17JyVsLhpsAGeZT5TBoCSzzWwR9RtKFbvPTUrT";
        cidBytes = hex"122007db5f06489907eed8b9437bb775123926241d3b5264f27dc6983c82508a7710";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXxJzMngPo2StFoHktEBZ1hk7NYzkbncfjCS9KnFGVCaB";
        cidBytes = hex"12208edbcb52ecbfe901a2ff4d7458738c68024e76a233e87b6f7761dcee03adcb60";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZ6BXZRbx5h8X2mbTKsSGWAZ6Kz55QhsvMxk7yNVZV8Qv";
        cidBytes = hex"12209fbbb0b4afd32ea7db20e9e0a64050dca09b121f5f3113506c5e71db24f45c87";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmThbB1dWksXMKG6bSJwcVGAooUmqAJS2RcSDqRvsr3ozQ";
        cidBytes = hex"12204fa7a2212985ae25f58213be18792aa98c509028cc1c8ac355031bd1c9002259";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXK1cvRHfi1QJp8fM8KzhnDc5eD5Nrq5E6MrBoUyqZVVC";
        cidBytes = hex"1220854daa1742441efadbf8c742a5953dba1b10f0a0b7d984172a489c7f237da113";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYo2k8hGviyVAL1NXUy7gaqqmA3AhTuRs47ccdMeTQRYy";
        cidBytes = hex"12209b56e2a27b1dfa5a82be0163b2de7f809ce572899b5d23cf7273a63ec5c527f6";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmfAaknQb6mXbxerM9fDG3zjU87EbZxFW7jmuR14sJBx9g";
        cidBytes = hex"1220fa026626ef9dc6a734a8bbc5fbeb2bc4cb6928f76deb3fb3702f8790c5b62453";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRAMhbRTkq2yQSAoFAkA7oikLwNxQQQXr7Eo1QV6C2zJf";
        cidBytes = hex"122029f0054f251e8d44cb9c883ef95b18d3b3b318bf7923d1a0717caecea702277c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmX64tr1M2PkUXXP6K82mm6bVTpbaEuMWCH1vtH6Ua6pdS";
        cidBytes = hex"122081fcd1028e5c9442ab3d790f68b014e0f879d0682e023b6bb87937fc1fe457d5";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPbEnMSBx1HH5H8AuMpYmZ4CtgqPWE6tYErTrGjkoBqjt";
        cidBytes = hex"12201298584f5aa1338e4bf040b9c443b665198583695bcdf7d54a3595efc2b0d5c7";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcuDvJrzB2pM7YmcWpM29fVENGbcb6MXAcmwvrNeEgjYK";
        cidBytes = hex"1220d85bc1035e212fe5cc9f6df166d7e1b83e9dc2761941f3aa4c61d59b0a6923c8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXPD9gmpGZcDDUNxCiWJtcFJsYmwkPnUS4yAn8FtpdeuQ";
        cidBytes = hex"1220866106701d58edbc0053dbed4c49afe6a1fd79b0ccc8a4495eb9fcccff56f483";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qme8bxY478fLDdh6tC4LEPj9fnd9AkTJP1DvoGheboPjuy";
        cidBytes = hex"1220eaa4e909c0323aeb0b0a9b48365f2551f95036ab55888ac25016b2390a8645b8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRpKyd6MkLqmEbCvJxKLkp6jmBZndzwrFW8Mk4XF1iANV";
        cidBytes = hex"122033aa247e9212ab729c87df42614a0497e244dff5de6cd4f9bf97eed62cea0c4a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmb5vGfe4U3DUsgg6CJ2p8MQQqNzqFELpKAtKEcZVjEctL";
        cidBytes = hex"1220bd61d02f44a078318b2c0a0d8aafe408d3c23c47d13f3616c0b3128e2cc07a35";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRtMdjkEDj39aXTiJqNuCurrpVnLf6doWVJPjFARL8WXM";
        cidBytes = hex"122034b256ebf9cf72be66c35b4bb55b8aea5111c1a1386cca22e900686333bd1f7c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZwVnLTekuL33gGfS2vNwpreGvtiu9826XJfE9ehxLCHm";
        cidBytes = hex"1220ac5dca66e0d2ac558c2b0dfc813bf57c17e401404715bdfa92f8862d1f731d00";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmbt1Un1nnRecNAksf9VhdC8tDV1mASuyoYRNnfWk8yaJr";
        cidBytes = hex"1220c9306b879d02b1082f7530d5031e5c84224f03eb94af7401c745ae362140b6ff";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmR4bn1ANUjJrgsmHK2Niv48TgQntDVi9GQ7v8ZJC3NSGW";
        cidBytes = hex"1220287673a235c2e2e7256a16221cbe137dee50c266fdede6bb107db3b019939c8f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeAJ9Nd9Q2mE2AHiP1RxdzrgYiGReNs3aXPQtk8vpTdAh";
        cidBytes = hex"1220eb13ee375e7c295569fbd81da3f952a37bea91e4a3cc4f0119c2e1beab66f3a2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVFqoFJWskAoR216aqfktZtYTJxGqgWd5vfJmuVE3XViT";
        cidBytes = hex"122066c67140f39b303d6b4961e1aae8485b1dbaafe509c07deeecdab96cb3cd9444";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeeNsE2D21jL4keuMEB1qdTFW6tgSrWQaAeNG8MubzecQ";
        cidBytes = hex"1220f245882a428aab7f8de8c38192800bddd4059a9dccc44433ebe9715f0e0ee541";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUX4ZcMegDG23aX3kv8Bn8Bie2ZYWuhUsRocA18ia6vX5";
        cidBytes = hex"12205bd0e6a1864fa805ca64485d1090546db6e91fe15f6615269f727d6f8816227c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdUVo4PAGtTmrg9P6k16avqoyjzEjmyH7RJ3GaTTASsHm";
        cidBytes = hex"1220e0e1dede91d2f99b86397c08e7c68d353ea9cd7c529d1eaa0d170e390562ce8c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaXLwZt9L5JacsCK1iJviaD8w3h4NbxnWBV3wPYzB8xEo";
        cidBytes = hex"1220b5098ab1b1ad360a34502fb33b7478cca9142b8622ada2dcf5d020b4ec54c2f4";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbiEbGRfV2zecfFWA611uuV7mRdQ7SM3B59T19enXtxWT";
        cidBytes = hex"1220c6af70076ac345f675c0865dae4b5bcef1cc33218c4cdb6a95d425818b27c3a0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPG5b9P2w2YWfCEJ9n1jMvLxSu55p4LSSzQwDgqKfEgst";
        cidBytes = hex"12200dafea2dbe246ece20e451e2cc10062048e3dfb7d3e71a6a4e2d396980f0b72b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSy72jVW7ttQEJSds1mJdo4F4eUkqyYhLKsfPWJTLfe4B";
        cidBytes = hex"122044c56b12a0b4c1126f32ce7ba1fff229fb6ca8af959b27d4ae98be94dca4e80c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWqsyTSndvezXakJrcQb2FqEW7H63yawFN3YBv6HunVbE";
        cidBytes = hex"12207e5a56574eafae7161e4dfac99cb118f0da5f0af6920e6f017dac9d327737db9";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUXVPdxRc5HvWK3dgmmAPczxKPgjKN4TNy1N73HFqbb2R";
        cidBytes = hex"12205becf95d5fec4ce3fb8b3f509878877035df93d751e28cf98214650e2b126b2a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZ5jGpakziRBZ1jrmpfC8N2CvD5s4aUaboEKkz9RScYCi";
        cidBytes = hex"12209f9e012fbf9f35560487f43c173ef2efab975067b175a5e30badea9e8c2d068b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSFe2P9X54yP9uS1h92WwfWJiKFq2FTU94UKeZwaX8x3o";
        cidBytes = hex"12203a2611ba11023864d292f639f210ec04e20308cbae3faf70ef05bdad0b97ba76";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUyFThoFwDdry24dnGxutgX4LAAqeRW5DCTmyfojZKiVG";
        cidBytes = hex"122062865314e294c74d2f1309fc5b3c04eaed6013af43907814679638fa013f64bb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmX7aNyvv7dBQWSGLWQ9gwdZYG3G5nY3edVz1wbyn6j9sy";
        cidBytes = hex"1220825fbc763b16602e30ff647d1302124ae41b74de8b1fde75ec2570bde6cb8aac";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRF9zYKjYMDGaK4Aw8nde8P9TzckYy8mz38jSKN6JHPTZ";
        cidBytes = hex"12202b2aafcc65a10f88feb4ae9337794c99036349105b702b5c85a223dc66e9cd0c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qme3X2kpdVPng2TzG4QFZ8wy5MpKPqb6ytvTuBVm7iQsRw";
        cidBytes = hex"1220e9576f5cfd07414c079b4b3e6d02d5292752538f9a8e89281223b4713757b496";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmcm6SCGXtonhezT1JDMDHTebY1x8ghkZfLCZ9kMJf9KYA";
        cidBytes = hex"1220d646a4fd1181b818e3593d1f0f6c1a6810ff905ec8f2fe1c3e31007438ab1157";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcyXQFpKng8zUm7cob4AWWWoK2J7UKeATA7ZNoCEuztZx";
        cidBytes = hex"1220d975d80f9ed251a690f44af2752b0d7876d484337dc15132af553c59a5a5b5ab";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcHFQaS9dsmG8aWxwysGZ1pfeizmHmrTR2T3QjWC2hxr9";
        cidBytes = hex"1220cf2486d0ec6ccc569baec67b91c7ac91249b3ec9afd6c0002357bd4557a3784e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qme5u8PnajZWuUwZaatiP6qGJBdgUT5ab5V5TxKT7NC4P1";
        cidBytes = hex"1220e9f394fe8bee00dfcde02c43bbaddcfcbc36feef0f0aa112d11479dd79e1eab0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWGqSRy4WHJNgSL5djr8Pf5j4t4jdjSM3V7gnHcEHX7j1";
        cidBytes = hex"122075e34de83836014385c0f5964e89205f08994c0fa7f189aec05996986b4b10ec";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVjnXDePUzwUEVJ3n7VHoAto3sjqAd77c1AwDkW7FHmY1";
        cidBytes = hex"12206def001e7e9d94434229c0fe38772c5e3414eb86a0cad5c1d389fadcc6b11916";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQJe7ipvv6RLFsGUPHHxExNNpGSP3zX5L58qWEEAQeFor";
        cidBytes = hex"12201d338aba8ca5e5dfca2f41cc8406f16b6401cbbbb1707d24f9af17b72021dc2d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUXYmFBpWUmVwEW5LZKE148b8wXJpoXKK6Zwyn8XDXPLD";
        cidBytes = hex"12205bf0c994c56599c0d2f6e64e68643c75246307edfbef82710b8d079a8c90fbe2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmc1yn1FrMHoRurdwdvKAuNTj1ZRqcUM2ZFf4kxgsuvMq5";
        cidBytes = hex"1220cb3b241673c6d5faa48e78d409d81842477982619c934f571689eba5bc9b12bc";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVFbKPXxiYS1WmXeroeBASyg8Br3oTHcHhwvecDMjUFHK";
        cidBytes = hex"122066b611c7ec1e5e051925afe0be5795c792931c998f56e9592a1fd9563a110c82";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNke6L32bQuAjUYMS8mjg3W19U4nXaDxwDbUQ9JDJYduK";
        cidBytes = hex"122006253def9123e3bee419fd97c8a34faf752d9521d67ad19bd25622621e9d4c92";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTiGVyc4T4sDFTYpKAYwRd1vmSvwyjUK8s9t7KMjjzucY";
        cidBytes = hex"12204fd419b92534ec55677ca684f24eebb5b9ddbbb2ac6e506dfff8718953020525";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNvcfYCiaYsS5hDzVDLk4yjTGbMkadovbF2QAok29mmUf";
        cidBytes = hex"122008b36fa065ea3cb13871ec78d3db4f647b669f98da7f7102b8505098996a2834";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmT23GXxdpyJAUm6UqN2mniiWHj9rsW7s2XrW3Y4oCU46v";
        cidBytes = hex"12204585e82bc83e0f050a2e376a5477956099ae84bf961ba197b3bb62ced6d52dab";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmf4QcPjEaxVspqEXxBjy9uPfpPn57gwUnWkSqEexCw2eX";
        cidBytes = hex"1220f86d718d1aa21ffd3cb712a19b8e220cd77b7730d53547b461ec1352dcbddce4";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmb4Nft4wWGurV4Md7inVG237RFfj2zUSU4camcDi1Gkgq";
        cidBytes = hex"1220bcfc80a103eea20fdcee7f45c99f91b992415306ace32799eb285b4e4bab718a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSzHbsTgqL6MwzzmSuisjMVCumA4JcQTP23jmwnBFke6B";
        cidBytes = hex"12204512f3bd57ea9b925420d141bf1b2c19b25237821b9e27dda75aa8fe2aba2b78";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXwJakeXPZTaKKVN9aemJrR7YCqTQqwCx1faqiop46CyC";
        cidBytes = hex"12208e99c0d3c1469c1c307726085c83d305e5139f2c8cb3d546436dfba2736d9f9f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWfCVrNhDXTjUEX6DgxVtrkrqbsDSaXXRVFbwHRND7Q3e";
        cidBytes = hex"12207b9de4c236b852a74266de3bd732d5d99e40d9f1087df1e028c511517e638ea5";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSxmGh4Mfjr6914hhP59VPnArf1VX1jqYFfPasV5YaGC4";
        cidBytes = hex"122044af1387d5175c07026a82bbc02b2413020beb60057679baab120fbea7878335";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNh7X7RJnhjzv6VH5gg3Qs2UnZEPri1H8dY81gyWzZxhW";
        cidBytes = hex"1220053dee4ad917a78438c60c3a18928af6e04a3daa9c407a25269c4db8529cd619";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRFj2rxPLUnXfJaAJKwNx1EfTWnqRXqs6ewtMyAxYokUP";
        cidBytes = hex"12202b500b912ba7fbe92419110d3cd7dae08bea78f3ac7504d8bdf6a52a66f71f00";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbEzcYqFM4jjjAYai6K7BTg63EsbBUBvovwsiKZ2NsAxQ";
        cidBytes = hex"1220bfb4f36ff61c0602b78b7c05e72a8039012716b649c5ee522de006bea3be0891";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTaebEBBe9Uoe9FS1teyTD6otBCZHg53SuaMwxX4NSw8a";
        cidBytes = hex"12204de06e8e627ace8ec726da7c852d3c898952d7f88f64130bae6fb0cf55443767";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPzJMJipSeigjEd1ZTMAAZmgLmhZqihi11f7Q6XbhMTej";
        cidBytes = hex"12201880bcf41b1b1e441ca57c49f0b263fb499580f8818ccb85a1244395a87dae14";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbAvah31PXd4ja9t4WNNENcqG36FUfL7uNszhUoGS7xn3";
        cidBytes = hex"1220beaa1192a2eaa555eaae9d942eea60b8afa312c51760bdf54e5c38c9eb0d01d0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUpZ1EzwqYzFmNtJsxjCCc6j6e63R8vMYX3KVPMGHvbmi";
        cidBytes = hex"1220604bef1da411b80d58fa247109b24e973f0b6b0f07114fc39a22baeb7fc88491";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmddgW4ynfUaTs2REMG8BdPK3MJvbyRM98RQgMdeRCLdHD";
        cidBytes = hex"1220e33c34531163e0ab8fa0b27b5a4bffebd3b0515bfc53180ad5e26a4b69587ba4";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWdt6UXi7v5RTSG41S4K8kjhiFuD927A5RyURSYGHBuch";
        cidBytes = hex"12207b47811fae88fcfe36bcaa8a2bf059937912b73816c5a060be56584feb152c96";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYbLZxLA5JSYJk6Ki6gvFTZeVS1oWfE2avqF59osSceBo";
        cidBytes = hex"1220985811df6a03eeaec528932c088169049ec9ec207692636748847e3e2e8ad76e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSqD6PcU7HToNxFLXffth8YWCfE39cReUNz5UyTrxWKNA";
        cidBytes = hex"122042bfa096b446102e7a72be4150e899056f9378a31deffbf35b49dbb87575e76b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmc7e6baPxEwRjKqsQp3FkSo9QV2yBGEpA7zk9nrdfvHqw";
        cidBytes = hex"1220ccae5fcb24bd448378c9cda2b11d5257064f4b57c59bdf2319a1dbef9673d73e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWLT92mwEawuqpknfbNCuT32MsxpFNRNig2a42LZBQsQQ";
        cidBytes = hex"122076d069b2109c6df92a3d07d48c283258b97e690889d6a07d4c4e332d432290cd";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmecvf6Mj1FN3fZ7sNMKZq5A2iewbFDHnUHBBnGo8FpAUx";
        cidBytes = hex"1220f1e650f7902aa96fc9afa00048e3c5b0d7e860a52f5ac5814faed9033a5afe31";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVobi1foUzDdnC9PdfAmiJa8qcK3FXCm5mNX93HScu2ad";
        cidBytes = hex"12206ee918ac64b0a863d4651b92620bae175c42ec24f98d034380996650cb4eabb2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNXrjLe8Q52GxNdwAARuVskptWbk2eCNHjGBdyVDcXEs3";
        cidBytes = hex"122002defb3b7b3a5edd7b040e0d40e7b13e00cd0c33c876040a562dd84f64bfa28a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVH2fTPRNkDwP4caeCoXfJ5HbiXq2Q6MKhfHLNwuzBznV";
        cidBytes = hex"122067144f1dd25d2c19bce01be9aed1fe1cddaddc46c20bdeaa550ef610ad27c2f2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQuM9YDmeVNJvD2exNTHaxgp7eNk5Yt1PxHempRHkAqwe";
        cidBytes = hex"12202617af0652255e6ae66e8872d8947982a9465db738bdfffd2b3208d234db63b9";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRccM7cm4MtNZ11QGRks8o2eq23EpnrMKAUpykf4d132g";
        cidBytes = hex"122030a9aedead59a46c436d1fb2b49c957182eefaae6e7a3197042cb8640afc14c9";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmV7FGCSFSXMx5vDpen1ynTUK7Ry8gGGf6FQXyZKcCELJM";
        cidBytes = hex"12206492bf2789b98b8f9e06ff9656ae6b88ffbdd3a6be39a9087a039e185c3e36b2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZtabptuGP44NCqjSRq3Sr9cL1vkrByWesCtZ48QoeDVa";
        cidBytes = hex"1220ab9e7f30b50b41c991aed6ca8495d6faa907bb33de662e665ce135b84fd97b71";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZZP3545LK1dQ7VwfaoYVCexgjVT5r5sKiNkNuGnyYB5h";
        cidBytes = hex"1220a6b362995826ff5d8252ae1e3bb11ed52abf69eb02b1a940d6cc471d7db366b0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYrrQp6ykXhvBAA85iAm2kaGNSEAuhRr81P9WmdSYCvGk";
        cidBytes = hex"12209c51865bedbe637d8390b6db4a852b5bf2552e5a631a6380704b18006ebc914d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmREXcyowcyVJNUVFpypz2ZW7zK2YN5wHA9LicZ8EMFWtT";
        cidBytes = hex"12202b018fa1bd45a4e618e6fc17cdea4d5e6ea308018a33cbd026becd7dfe00da0c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdMsPeydQqAvu3VCgjSH8ijjPrvyd8Vt1aFpeqaujFwuE";
        cidBytes = hex"1220df2f3961e28315fbd2e818dba70ff360a4037631d5222cdc1ec9b1cdf860d9fd";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWMEQxErUZmmjD3suJWubR2JcxiBjeqa6LQacoHmjQgC3";
        cidBytes = hex"122077039adca3122d56b335bda6db26b71a3a68565cd30e98c0d128b75fe3e400b4";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdDnp3mCx5h7uRDFAMadAxY4C1U7iMi6GeN1EpTyCDZtv";
        cidBytes = hex"1220dd1d66526ee100641626a239aa3f930b006f0fabfd2cd88f0421a58f9bdc7dd3";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVC4mYmu26XZdA7EijSTN8P2qezshmnQYuNMgra5tig6V";
        cidBytes = hex"122065cec90243ea2f53c8da31510f17332a132751b09edd3cffb101bdf67a9f2692";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdpTiqFyg6zdS4FoSGGWvnMPkijPJvqTGp3d2q1kPUFxc";
        cidBytes = hex"1220e5ff24997fb1fb2d66f4f93968fb168d6712261ce1db668106129639430b1909";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmfKBT6KFiCAAp6W2H4AuY2KR5AXZFWA67tRT1Hzn35AsH";
        cidBytes = hex"1220fc3646763ba5db48006b36451a7b673dc9f3e46c1362e96c72869ca6d9d559c8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVUd7XpcxEezyLpexqnoZC7mHS5TvnrcjaFtiabDgND5F";
        cidBytes = hex"12206a0ca675656e77c005507e0d78735bf21e082394f29dca6d8242d8b944378ade";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQgiuBQef6ko1rRdLszouEp879BPey7uVfULYsgEU7oBd";
        cidBytes = hex"122022dbba8de4c613bf9254dcf7eab3f233c7cf4e40fc35cc6c163d09277e92df60";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWKpamDKLKDJM6yCETNQVb96AUhwxmj6g5YB98UnCvf8x";
        cidBytes = hex"122076a7141704f89e47013ee5c183f762401c3a2812708f1e766bd311b353fca67d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQpNFk5ww1nKJjdhkBX3Q8uE9AUF9Lh3ZBXEZN2m8uMPf";
        cidBytes = hex"122024d10803a927f586e9908bb11684a1f7067023665a287fefc820a670e373cbc2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmfDFPV1PPscrAj1xLUk15JJCzc3ADAWpRhcyxgKFTKT9c";
        cidBytes = hex"1220fab13e2b5d4e2546379ca103cc0473590e761948e6707a14c0b53d4040feadcb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTzRZQNnGnzUUXYt9o9MgbQZyTzqhfuTYuhs9rnJtxu6W";
        cidBytes = hex"122053f7a2f63ae570171604cb24c2f9aa79c8a572459356b2d687ed6e8720a49cb7";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmc7ECEpFgK5NKrY7ihBQCC5QcDUgTqEJs1HNow7WWDjx8";
        cidBytes = hex"1220cc9358e88765e729b216f443011054af376fdc915bac90ecb7e27295205ea8b5";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUjPFtH8WvRPbF64W8KNys2Tm7a8fSavRbgdCPMzE1Bf4";
        cidBytes = hex"12205ef9022806b9cb0fe005b940aaba5cd3abb23cd4a7a474ec6a94080aa191a977";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUw6aa5jYz6LP61sk6FmLSapqKoxpoygvgoD5akJtDKKa";
        cidBytes = hex"122061f91ed64f23b7e964e72efe564400f0ca6de6e2f14b467195ad6d3404aa97ad";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQkHPXQPJU1HDqNWDBkHtXuHCEUTnvzM92CiPmtDBnBFu";
        cidBytes = hex"122023c534ccaa82d3979c59f4c4b3e940745adc9454c24d17f07fd2e9b5ec1606b0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTBbjbQZvyXsypFv4nsu4gZubVE1Cb1Qp2jCuc1sPr4iS";
        cidBytes = hex"122047f8d81fd59ad8d0d7c2c77ebfaf11af6347230e2d1a706400e2ec03a1740c97";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbKFoBXGSfUFVYreQbudqmLiXTJyEQJEL2beqgwFShs6U";
        cidBytes = hex"1220c0cc7126d2139fac60cb563bf6c94aa641a6233a971b33635d49555942145ad5";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdjMGhTMeBgPGR86DTzMBNBPb6DDhH7GReBJALyXKzbhG";
        cidBytes = hex"1220e4aff1f949590f186f6d6b8b93e5b3495126561a2280bdfe164b162cba85472f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmd3Jy9rpLzxEYXoLed91zfks1VFUguoi7PXumV6NJFSR9";
        cidBytes = hex"1220da6e1c0216d7a64c893ea0bc246ea793d0e38ceba2a4bdd579febf8e9221e19c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVwv2S36yqDemCsVPGfQ4ziUV34amrnzWyYZdeYg4g6TF";
        cidBytes = hex"1220710a7461bc0ebb202a83cc933909b4b47754a195e4b76525c056ce1914e18c8e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmazkPCwSvwKrybhUcB45DVjaL6WGpxSBkV3bK2W2uyBvS";
        cidBytes = hex"1220bc0ebac901a1cf1203bfe7759292f83023612a2cddd9d880f29eb5942ca282e3";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmb9yjgfRpUq4WQ3jedrhiQus96gixRFRX49UtLztxXBah";
        cidBytes = hex"1220be6c0e267730975287ee310103b0d91f251a1884aaf475f3b1c3196a94f6cdca";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWG6KGdRrHKGzgqzSSskhZuJ8paNWxVLaQBwyiKngrpvT";
        cidBytes = hex"122075b28b62293752ecc437f49bd5f247bd12985c7c6a73b0fa39bab97806b284f0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeXDLNrwuYofDZ7McJZdp3jFD7Uun2WqybPKUr9FZ6eju";
        cidBytes = hex"1220f06fb0436a86ed601b7e8db149509dcf20e706db56b699f9922f9072645a6ef4";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmR8uVEQVUPTSaoCCVExHHuV5b1yoo1kgeoHUGZFAHu67W";
        cidBytes = hex"12202990ccf64e09518e3ecb47ed69d5fba28acea94c18032271e20766f767e15b6d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUYXTpKdX4G16XVnXkGGbHdFCS15cupZobAGd3VmawLg6";
        cidBytes = hex"12205c30e5d3a97436ca207bf5f96c7179ce22bdee06617adc0821583b13f81c4f87";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQtSE76TM5A3jE93oFxnyyqGpSMKZUQfYfEpq467Qpadf";
        cidBytes = hex"122025dbd86dfc0ff65f8d50f01a8bac3fa0c211c99f7615d4bb6735c99ee948fe3a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmU3n7VPMi61noMpNG3KKQxZnaFnqdNiAew1NTE4u64o32";
        cidBytes = hex"122054d39e5bdff5f066b84070b002bea2f0da0c14f8f62f48b7287c60cde1f62875";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUWCmwErtJbqFjUyFhJKCicUzamn9A6vuaw1mH3DJFQbS";
        cidBytes = hex"12205b989b234f143da1956308996e5d1d5c3951b1e59a78b868db7f3b50db3d6649";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbXLduoggmeaWCtSEdYTZFgSXn6VApP8M4WG9AbsQ7nuq";
        cidBytes = hex"1220c3e4e26ddb1482f20d9e4be790a78fd590a0b93e3a204221a0280a311a272aec";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXaQyeTMvyY4ax4qjkLK2jE5w7VG3uk7JTSHyeLHa6Ppw";
        cidBytes = hex"1220893fc96950c36ff316e6c5bf5b8a6a5bf6740ecb62557e093380010d1293af0c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaF3K5Yi5MY1yX6AhgVauVEKqz7Zdt9NWUFcrxBiL94Ld";
        cidBytes = hex"1220b0dc50c667cbe6a7a9ca705b7b340f161ea55b6ef596f3d879b074f3bab0aaee";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdonMnXN3xkBGARK8UHue8ybsTQJ8D4qZaCoB6AYYeD8R";
        cidBytes = hex"1220e5d2a29d6ef43eb1c8a932715b1103695b421426d4f7eecf6879beeeca981136";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRxBM1igpc9FLGwnM1rC7qBUUgMD48sA5hMY35m2uzagC";
        cidBytes = hex"122035ad079a0bb2855b5ffcfc3ea02af168c85fab49bb256cdda1611e7fa2e9ff4d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbMLqsXkSp249B8m6ouHUBqJGfV9cxEgr9S7Rb3bwY664";
        cidBytes = hex"1220c1554f401e20b1139febf79aa39dfc6f6c2ccf5a56a2c821e5c4be91ad0e87d1";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdHZ2byv5sjJGLsMPKNBMbpbQ2CJ5dRfdHnJM2cTFu9cN";
        cidBytes = hex"1220de14234a175e5faad5f668ef507ac414047ba3b2cec27f2e7a676a0932b911a3";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmchmwWdyhhrPMbo4j9vdSYetHJWaYNc2zvB3HDXodYnEd";
        cidBytes = hex"1220d56cfd7edcd201bac52cea5cea120087d6023a1bd7b86a0592f88025e93233c2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmccXdAoTsDKP4iPkiNQpXJ9RsZKhdES6BPWkbeQNgsA9o";
        cidBytes = hex"1220d414e61433b2371d9e7536e44f86196c6c9f629637344a9f1ac59f78a0358fe2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYyKQRYxtukP6t681sC65zFNddkySibyJQ9HjbqXughAg";
        cidBytes = hex"12209df987f6f24fe86b0706238d15b4e66684b887d4c9f4a54cb97d3f72ac763ee9";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmU5M2k6U6jbwoEteGcwqSvdc98qmD8yc2uiGg9RDXreZE";
        cidBytes = hex"1220553a6b8ad06677e89fd252ef32244e0da9d17bb71c06f6af07561a4ca83e0589";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNfjgBAUfuwyxv3EpYNbLySFANE98TayYcDJtdX6wa9vX";
        cidBytes = hex"122004e3a6b890e5a09ef22b3309263032a3ef071e2f6ef1870e5902ca99a6103c68";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdD5zqYYEhz5ZxgxqwhQWq3iAuPE6XuaD9NB3KzCqhc7N";
        cidBytes = hex"1220dcef404da06481e5e4e04825323c9d398fa7e39702bc4debabae931989803fbd";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbBYcmok5bzTvwXQsKCFTWvDMutNsaPkss9qUv4YLBaCa";
        cidBytes = hex"1220bed2d08776dcfe225d855d4fce2bae5435aec12268d5a691cc25ec0f107d5aa3";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWMVhh57Y3cEoLLP8eTUyYFVjZBe9j6kxzuExfuZp9Vjg";
        cidBytes = hex"12207714e44ce1b637546a09bea6d27168d5290fa9d2d34a0786bae87fbaef3569cb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qma4EuBUoXrwG7rkBcpFBE6YRPU5fkpQUcihLrH7mc1nMV";
        cidBytes = hex"1220ae180778d65eae1cb01918ecf77c6cf27fde11d8d946348fc62ec06fe6aaf928";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTtxRzrx4rsc6Fa7ykwP4uE5WhZZrcSqC9drriv2SVShn";
        cidBytes = hex"122052910f250d8e0650abeb9edd365961ecfa0ac47d1921de8a4536ce69e3baef11";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRBkxwg6AzoAE3CwWuBuKZpdEdjVVGaJW6q6GSUttZSVb";
        cidBytes = hex"12202a4be82e9f08e062cc5a9ba0ac164a1e848da17dac5d10cf8ffc8edf5271f54e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRrRetbNGxz7uiZ3PN74X4EMkqd8sFKZYpQhcP5SjbUi3";
        cidBytes = hex"12203433b923d64fa73388b1dd87c832e00eced9b8ab7d1b4bda6630ed2703741da8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZxBjY4HS3eEmzYuvS9uBhC3R2GWYo5krSjV9tZrNCdv8";
        cidBytes = hex"1220ac8af6d524efeaaa431241eab411b2cf518e51cefd8c0e4601db47886403fa41";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXyTauiMDeWaPJmpQbNdCdMDWniyWLGCPNA8qEzvHyWMY";
        cidBytes = hex"12208f27181f63763e928372cd11e3f23c34dcdddaca144f96285b4d1693b2e0645b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmV5Q6TWpi6QyMjLM9Mp5DCtNgGKJwx2xUfjt6xcm2FTvL";
        cidBytes = hex"12206419924fd691323c00fc2fecbdd8582402825dda8b63daea9cfd9e27568aebbd";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmS1J7pz28T2BttEaRhQo52cvgsHz77TqAM5kLtaLZzHvu";
        cidBytes = hex"122036796e14ca70f2a39e4f48bfacbf949c92b43b8bd0d6ff93cd1cb6a9e6b544fe";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUwotL7nzGiom55LHDHyiTxPefpPoj8BU1Lg99F3jzFf9";
        cidBytes = hex"12206227d35541f41a0b90adb03ab2a0c8e220f2fe4345abad402ded5e8d7b3728e4";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeQg171ypvAtFsaxU9idFeXxDt7SmHDqcR7vEBe1FcB2N";
        cidBytes = hex"1220eec2c6b0b854274f46f93834b3de2b494f280a7f4be7ba0b7b12b89f0e2f954f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUEPheDYrJo9YCHnHnPLd1otheSkmWkgNNS3fKpevzRMw";
        cidBytes = hex"1220578baac71e2af4ff5a7051f8a4fdc720ed1fb61307598ae26c37e72e5defa036";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUriRShDXhsX9rqrvw4s4hRUsmWPyXSAWxWeE9etjPQDv";
        cidBytes = hex"122060d9be69fb76c4ad72dca944ce90a5a7cdbdaf4a8a3f5ba8aae8942e565d4a59";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSsVAktPSE9aBaYf7EuAfYnFviT5gkayAEhgH6DWQD6ye";
        cidBytes = hex"12204354f71e4635784e1b37cce471dc7a4ee77821c4806f80af3ae57448e8c46579";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXaDXuQppaLah3QzVA9rT38o3h8TSsnd2ncTMc8Nq6nuA";
        cidBytes = hex"12208932d8e105265e1b986aa764d2f0bc59a75836f7115dbdc71c7b20f6348aae4d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmbo1CUsQYWwh6tT5sETwrY7kCGNPHJKNnZ3YheTYVWWQh";
        cidBytes = hex"1220c7e832c4906e089dfd4b5a432b7b1c3c36a0ef48ef9236c6b0b66304b775f21a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmReCnMHknMLgDc27KbmwvQDqYFctx2BVgceddsWwVCskV";
        cidBytes = hex"12203112332516e9c22bf2f7ee5f3dd4caf2aaeb59655de2c2915c21dea8cc3b225a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWvb6q316KKpEjrqb4Uy2Uayk8aWtUsC4NiCe3Qrr1cgS";
        cidBytes = hex"12207f8f29bf452bd2b56e21ea7a3c6c5a049023601ad086cf87dd63dd8247d91c4b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUq9NgezjXVmskPz3toW7h8twiBMpQbNkz4ixRZVe4jJy";
        cidBytes = hex"12206072cbc5a829a05bd39abe3aa542aaf423c9aea5483d54f0daaf6ca527a48442";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmasGHmMBsQBLENexZZg3WdQ7AtnWWRUSnrdkph4JDHfq4";
        cidBytes = hex"1220ba23e5efba2c8fa339e5961d71ef32562b1d5d6efc73ef829605dc16214558db";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRYoeQ82tgM15joABEd5RBfTngYKLJtHeFp9YCoHUvZSr";
        cidBytes = hex"12202fb02271d2b8cf75650e91dc4150b5e3c0c8716402c076892efe270b30b36d53";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmQF86sLQ6xHZUBNSckjnJJhhTkVjVhvLHEr3RbjHqooXW";
        cidBytes = hex"12201c4cdc9ae4bbaf61f7441f028a0fb09e2811df6202cf065b50223cc8aeb2a711";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVabQV7Hs2jW6FrBHyJ876whutfcsmEmDRJT9drigUwxR";
        cidBytes = hex"12206b943444f9158c9f0e2ff88512b1440c2a4116ef56cf78fdcc3b24fde07904ae";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSQgtaxDZuGbvebExn81cGW1ygPijWeoYUr1duYriDS4G";
        cidBytes = hex"12203c778961ad9b00697ee380022ea6157fe4a437f971b309428b579ae8fd32f211";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmU3D9Eywebx4SdxxEWRBZpdwm1W2qmBBhz7GETbGSMxBH";
        cidBytes = hex"122054ae56eab55b6c130f584573433d3d87546c0bf976b44700d64ef077fa9623a0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPpoik4XEWYUEAoWh2eSheR7M3p58GboWobVYZgRKwg83";
        cidBytes = hex"122016122369294ee144cb9652df72a771b8bb884a7f0d11baf967a3b11f88b17b64";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTfGZX9K3ufdnZgden1KA8zYuvFXDsbrmCRL36tm9yn2a";
        cidBytes = hex"12204f0f6d5904f9916844d3a876980901a376db880a9468079bbc53334c96f0e3af";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmemyvmboMifBcWGVwaNFKnn3aiz3dcHwEiC8eH3chNFYq";
        cidBytes = hex"1220f4383dc4c2398ae2423a02fdb07718509fbb3bd16175ca87853bde1233cab756";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXLk9V19AZjeF6Y9KhQtYRwExZM6HZ31DDXrTLCrL5xTw";
        cidBytes = hex"122085bf54a0aa44e80ce0b86784bb5c5504c90dd6f63b9b1ed7f3ead0e3589b3586";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZQGpGymJmPoZ5VTHndAiKobtVsGousb7DL2f5Ps3zBKr";
        cidBytes = hex"1220a45e1fcd2393b78aaa87282d9ae23c1ae3eaced84660ef4dbebaa06a0e758d75";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbGAvUfGKENxcsQagVT66JhvoKMN1KRWXnuLvrTehHP9p";
        cidBytes = hex"1220c0023032fbe1440734917a822330c6f8fe9c014447f63c6d3d201443470ed037";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmfNtgpDSEVEZfv7V9axLxHFLD1gnqL3MfNB1hFh48v7Nd";
        cidBytes = hex"1220fd29a4df60451500f9e859a3790655760e76ff4108d385ce78b1064ef49a7f56";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRuS2RAgnmFGy7frRfra3R1YbMoNhTTx8EY7JDujiy5bn";
        cidBytes = hex"122034f8e2a2ff5ce3f972280bca5811df96852b209e4f8e43a11a2f59dd2daafd01";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXmodJh17MiFHfDUfRJFEvYdzQKNA8JACMUF4bP69TiTn";
        cidBytes = hex"12208c2ac909bd22de741ace1fff9286b525322e2e61d100973c465f2269d1c5f705";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmc1N7L5HTqfdn873uQoADzCh7trYzmmyS1rZUziroj8zz";
        cidBytes = hex"1220cb12cff7339ffb5ef01dc9fa248a408cc12e1cf0bc99d343475461671dd415ef";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcCa6uvdftdzZjEL4cMLtnUUR4on5ujbebNbbR8YsgQxb";
        cidBytes = hex"1220cdf1c2f7aed6e3311cb769ff34994ff7b4a6f9ac4fb1dae55b72d9f67792142c";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYhRuurN3uWnHsW6kE1QfghDxrxGRFfYaX9A1BAFKEoNE";
        cidBytes = hex"122099e798e585e0bacef1fac79e9965c8826babd8b7fb8c127be51804cfacaa3a6f";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZ1ZdhK8HvxK5J7SsFu8Fq2MxQNDyCRLftA2zfLBcrbqJ";
        cidBytes = hex"12209e8cc8040beadd28937de93b69c40eb9e195e30b57916dee773b4197d2166191";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmSaTqiG37irccYxf6yER2EhkAKhR3QQiMVfTfwfGTkd4M";
        cidBytes = hex"12203ef896ed8959dd6c971a7c2c8b84946ba315d63d569efd47c4dc6160cd2b5d0a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmaQmzv7F9eXznVEPZmJtNfDCxELaAUeLdodT2UnBskhqb";
        cidBytes = hex"1220b35acf198a20a50b2075d91ae428a292c9b8b8e7966ea69b982b1bbb47d0dc7a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdRV8b9AanrTz464A1QJGn2jPtfxFNTK9aKYT9nz5bfvF";
        cidBytes = hex"1220e01c60d15772e5aa98f92b5430318f518a8024cca91c5e4ac004083b99307ad8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPGA6EtFY5dm4BD7qJC11YTFwaHjbQzRNXsW6vjizA39k";
        cidBytes = hex"12200db501390a4454b98c8a85807fcb42d94238f4ba5dddd80f7b0b900e2e7958db";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPxsWA8foYVYoKNaVo1Qm6fFzD4wpz32imdhiSLXTJooB";
        cidBytes = hex"122018230ff0c714973f4155068d8059c2a3764556c713f53be6eddea359d30a5636";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmS97Ag6tmVvyZ512Z2HitjnmxSVQQYQgS1N3VBYmLLENV";
        cidBytes = hex"12203879b1b9862295a9e0fe10bd67e2acff50a1ebcdc169954cc011a3861c71cf1a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "Qmee3uvz3F6BUWidqjqwHLZHpZo1TLHpM7s5MbyTiXbJyp";
        cidBytes = hex"1220f23019edc6ba47fbb88a58a20b2fb75b0be1e32f5eae65b69c83a402d5be1c93";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmXz9tSAykLucAyyyZpQy4ppxuVwGWNJ7J8xmU8cCvtnvt";
        cidBytes = hex"12208f54a9fd7ca72b87812afafd55f9c44c97177ad40197bf6944016e662f270ef1";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmVgrXrdkVSNHZbMqb9Xb2Ho8MFNZ7WLA53bq5TuwtBZnV";
        cidBytes = hex"12206d2ecb14bd3513b80f070a5872b633103915886b1feb260858f99ae61793f04e";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPfjUiX1LqaPTSkBnv5oSDdWa9hEXJWngLWzmyfQEoic7";
        cidBytes = hex"122013bf1d623a2eba1fd0f8be4713a1c8989604f7a6e68f941e64d87b61e1455c98";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPAMNb3eAi4EmzmWB9mAWfFv3mDAqDTgTw9JafdhjnFBF";
        cidBytes = hex"12200c3846bf52772889723b968c72d131e1808471775f7293d445e7de642d7613f2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcXwSDaCnHe1pxPJ7uEGRqNufoaB1ESsyKXHFot2CmjXQ";
        cidBytes = hex"1220d2e7eb06f03784f30c7f506a31a13b861a514aa2cedeb2b612d46612c7600abb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmakNNugVoYkL9TAqkZBM7w3vssTspti5eCBCK29Q23RUn";
        cidBytes = hex"1220b85fb78ecb0694c6bec242b5e5c0f001f5a58f464b3e6003c9aef998ffe9d0eb";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdDPLdz3HfSd6Ubtyw8HdFrREWYZ2oHmATn7GcHSBzGSP";
        cidBytes = hex"1220dd02dbf1c5f8fbaffdc986977439e405f2265fa5be6f91407f86b87531d26f84";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmeywhfzpdeDbaLx8Da3yxzPGkQygCF9LURXRs1osvL1RR";
        cidBytes = hex"1220f748b1bb92855cb9be49a520a1651ad5cb2c70cc8f17e5b73fbddd4422072d90";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmRsbMkGN1tRU2bJ7tyKby21SGN29UnG7oft4rptfKsCZW";
        cidBytes = hex"1220348046deb945fdc9ffe1af30f2835b05dafa6ea9742c9199cb8ade625ca83bd9";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdB6JippJCF2MFNf5HBvbAMJQ8AE4jSfTp7U7Yk2xPuX3";
        cidBytes = hex"1220dc6c702ee9ee493366d888ff048122dac0ca220886813ebf9d4ddd248b541bde";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmTeGLSGWJsF9jafwyQnQh3UgLwWJehroPk4TWCFc3N8XT";
        cidBytes = hex"12204ecd975cafbff2ad75bb89da629b139b05b8f311ad66ebaea9e2de03865ca72a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcE6fHsAj41Zaqzc3EsWNurLKpw1j72mysv9XxVEehSvV";
        cidBytes = hex"1220ce55e50c5fd1372efcf984e924d579b7e83394f1e8df4d020f2f3872d2f3a9d2";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUEskFGeSnKB3mDA2K3kC8X9ZfPzchknL3stjt8fTB9Po";
        cidBytes = hex"122057ab60a8aa08fa1fa0ad11955fb2bca93a7cec0ee00bf19efb215db3f1eee07a";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZwf7wNcHyUh5FCsJA3Tutz3dn72uxKGGZ29w2AV9Kf8s";
        cidBytes = hex"1220ac68595ec9653c6b6e499b241acc5c2fd8fc613d94d61378489b739061db8eb0";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWt1exHDddFTodzpxpCQdBLNK4fVTyRSx6teoYRyXHHht";
        cidBytes = hex"12207ee62f0de53f60fbbde44e28931ece77a4651fb97d722ec8fb0adcfbbef9d063";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYLed2R2vc6yAhgAXKqn1rF1tE77viuZUtm3AgbCxG7jQ";
        cidBytes = hex"12209494c52bebff33cbfd649908818d8773c6e152742c3cbce7070e14ebd7c1801b";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmfMQCr6xwPTmKDiM3iBd3QzKmpDnfzwzEBXhRj3wKLEVu";
        cidBytes = hex"1220fcc7dbb9a1c05561fdc44fb39e95ef183951dc03798646b3de30e0bd906262b8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmYipjMYcr33BDX3EmF9TFDrchBLMfxBSXScTRiKACwdKb";
        cidBytes = hex"12209a42fa7ad3bfd759fad496adb1f8ace375edf989021badca9e714d91c1054306";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmWuMGpBb8QCF4eR1vE41hARWkpFio1ANwLkXZ35K3wHLe";
        cidBytes = hex"12207f3df273b0d4f8198060f0f08c4109f82f16e959cb76ae90811da5c195615883";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmcarppcPUmjRGYKRsFZrieXTXWD4iJMjMJYvvr3nKNQ1y";
        cidBytes = hex"1220d3a7729912c3d98256f1860f95922e194a6c3d5b92dbb571c46ee8d9c02055fc";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmT2erc96tFWuJxUT8i2GDNNBHNAxdRD456t4GbCtZMbPL";
        cidBytes = hex"122045ae25518ce737aa7c30ef767d7ceddfd4c82edd0fb4c1e17a251b6b7c655a97";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmUmCVJqyzpFz1vXT5xSkpJd4YPYbqZJmv21NdbW3yZGpw";
        cidBytes = hex"12205f6ffe764bd36700a2052f2ce515f6c8a761c8e77ecb2f3a4360c6415a1d33f8";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmNYQFZTdBfapMDem7G7ur8xqRcchQUwXG45WY4Tbi9f9v";
        cidBytes = hex"122003029f51e6ee1b4f61042b965ba14abc4e842115e52a35bdf9a6c5588b92886d";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmZikZTeQnYCorKMTfCidYSn8f3CMAqMRsDem6Z9Kqfpsg";
        cidBytes = hex"1220a919f31c434fbc1abe4fddc14e7c3dbc4bbdad220fad77c2a6de58ab7ce92247";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);
    }
}
