class Dstack < Formula
  include Language::Python::Virtualenv

  desc "ML workflow orchestration system designed for reproducibility and collaboration"
  homepage "https://dstack.ai/"
  url "https://files.pythonhosted.org/packages/32/78/d776689c23d7c666c877362d515dda80394570a89aaadc4ac8466ed1035b/dstack-0.15.1.tar.gz"
  sha256 "a6301a4507521a8dcb5fa8a94c5f3a010e64f25a57fe1850809c3a5a74ca66c8"
  license "MPL-2.0"

  bottle do
    rebuild 1
    sha256 cellar: :any,                 arm64_sonoma:   "392692055a44358e4d5e0fe103f0f210a8ebb7a4867af0b7af4c25a660b5625c"
    sha256 cellar: :any,                 arm64_ventura:  "7f65c22f923af2526a2b7863b9e4e7da9a79f1236eca939ab3514ef4269ce38e"
    sha256 cellar: :any,                 arm64_monterey: "d18089b959239dd8cd14e4bc41b3a805da338f11f5b046f99fc9b12f7a36e3a5"
    sha256 cellar: :any,                 sonoma:         "8c4f92b9a0da67a4fe0fe51f564976c3317940f056c54bf35b3aa22f1cdda6b0"
    sha256 cellar: :any,                 ventura:        "c92b607b75686466144f7855b06f862c6a04e0daa27eb94efde3ff67e2d08369"
    sha256 cellar: :any,                 monterey:       "b7c9ea975920212d09020468e5702cc2abcab40ca7b487d52ad02355725e4823"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "bf76f78dea0183b5e2bfce92f7ffc56ea60729f62dd8e03dda4d7c815ebf912b"
  end

  # `pkg-config` and `rust` are for bcrypt.
  depends_on "pkg-config" => :build
  depends_on "rust" => :build
  depends_on "libyaml"
  depends_on "protobuf"
  depends_on "python-certifi"
  depends_on "python-cryptography"
  depends_on "python@3.12"

  resource "adal" do
    url "https://files.pythonhosted.org/packages/90/d7/a829bc5e8ff28f82f9e2dc9b363f3b7b9c1194766d5a75105e3885bfa9a8/adal-1.2.7.tar.gz"
    sha256 "d74f45b81317454d96e982fd1c50e6fb5c99ac2223728aea8764433a39f566f1"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/18/93/1f005bbe044471a0444a82cdd7356f5120b9cf94fe2c50c0cdbf28f1258b/aiohttp-3.9.3.tar.gz"
    sha256 "90842933e5d1ff760fae6caca4b2b3edba53ba8f4b71e95dacf2818a2aca06f7"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/ae/67/0952ed97a9793b4958e5736f6d2b346b414a2cd63e82d05940032f45b32f/aiosignal-1.3.1.tar.gz"
    sha256 "54cd96e15e1649b75d6c87526a6ff0b6c1b0dd3459f43d9ca11d48c339b68cfc"
  end

  resource "aiosqlite" do
    url "https://files.pythonhosted.org/packages/0d/3a/22ff5415bf4d296c1e92b07fd746ad42c96781f13295a074d58e77747848/aiosqlite-0.20.0.tar.gz"
    sha256 "6d35c8c256637f4672f843c31021464090805bf925385ac39473fb16eaaca3d7"
  end

  resource "alembic" do
    url "https://files.pythonhosted.org/packages/7b/24/ddce068e2ac9b5581bd58602edb2a1be1b0752e1ff2963c696ecdbe0470d/alembic-1.13.1.tar.gz"
    sha256 "4932c8558bf68f2ee92b9bbcb8218671c627064d5b08939437af6d77dc05e595"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/db/4d/3970183622f0330d3c23d9b8a5f52e365e50381fd484d08e3285104333d3/anyio-4.3.0.tar.gz"
    sha256 "f75253795a87df48568485fd18cdd2a3fa5c4f7c5be8e5e36637733fce06fed6"
  end

  resource "apscheduler" do
    url "https://files.pythonhosted.org/packages/5e/34/5dcb368cf89f93132d9a31bd3747962a9dc874480e54333b0c09fa7d56ac/APScheduler-3.10.4.tar.gz"
    sha256 "e6df071b27d9be898e486bc7940a7be50b4af2e9da7c08f0744a96d4bd4cef4a"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/e3/fc/f800d51204003fa8ae392c4e8278f256206e7a919b708eef054f5f4b650d/attrs-23.2.0.tar.gz"
    sha256 "935dc3b529c262f6cf76e50877d35a4bd3c1de194fd41f47a2b7ae8f19971f30"
  end

  resource "azure-common" do
    url "https://files.pythonhosted.org/packages/3e/71/f6f71a276e2e69264a97ad39ef850dca0a04fce67b12570730cb38d0ccac/azure-common-1.1.28.zip"
    sha256 "4ac0cd3214e36b6a1b6a442686722a5d8cc449603aa833f3f0f40bda836704a3"
  end

  resource "azure-core" do
    url "https://files.pythonhosted.org/packages/b1/38/ecb085532b46ca3893732d2dafa8b75a1754164b1c0e757e7c53c4250714/azure-core-1.30.0.tar.gz"
    sha256 "6f3a7883ef184722f6bd997262eddaf80cfe7e5b3e0caaaf8db1695695893d35"
  end

  resource "azure-graphrbac" do
    url "https://files.pythonhosted.org/packages/52/31/87dd867c239b5b2c5bccade8a0fd81c28b9b380ece3db47b58ae05270842/azure-graphrbac-0.61.1.zip"
    sha256 "53e98ae2ca7c19b349e9e9bb1b6a824aeae8dcfcbe17190d20fe69c0f185b2e2"
  end

  resource "azure-identity" do
    url "https://files.pythonhosted.org/packages/74/02/a0545eaa3fb83a6b6c413de4a65e06a02ce887f874a2e74a1240b2169140/azure-identity-1.15.0.tar.gz"
    sha256 "4c28fc246b7f9265610eb5261d65931183d019a23d4b0e99357facb2e6c227c8"
  end

  resource "azure-keyvault-secrets" do
    url "https://files.pythonhosted.org/packages/cf/e6/e8d647d7230006327fe3ee4ba713c267d456da9814bb3564b8bc960dd396/azure-keyvault-secrets-4.8.0.tar.gz"
    sha256 "5636c0a1d8a20e3c5799cb3ccffd4ebf3f0d1acb7cae9526861833af8b0fe814"
  end

  resource "azure-mgmt-authorization" do
    url "https://files.pythonhosted.org/packages/9e/ab/e79874f166eed24f4456ce4d532b29a926fb4c798c2c609eefd916a3f73d/azure-mgmt-authorization-4.0.0.zip"
    sha256 "69b85abc09ae64fc72975bd43431170d8c7eb5d166754b98aac5f3845de57dc4"
  end

  resource "azure-mgmt-compute" do
    url "https://files.pythonhosted.org/packages/e4/db/f577c83b84bef1e741ff4b5ac9eadf5b8ab881ae3f3757338e71122384fc/azure-mgmt-compute-30.5.0.tar.gz"
    sha256 "ed3ea34b799db0d52ee55e2f1ab4b0f09fa4a08f35e061ecb9aad9fb5a218844"
  end

  resource "azure-mgmt-core" do
    url "https://files.pythonhosted.org/packages/14/95/2b2085e40f4b9de88ad256428a669583066d8ab348fc19110c7d04c3189b/azure-mgmt-core-1.4.0.zip"
    sha256 "d195208340094f98e5a6661b781cde6f6a051e79ce317caabd8ff97030a9b3ae"
  end

  resource "azure-mgmt-keyvault" do
    url "https://files.pythonhosted.org/packages/5c/e6/54879a503c28d2b1ef991f086c41c86218a82dd81a5b870c59b79a0f15ce/azure-mgmt-keyvault-10.3.0.tar.gz"
    sha256 "183b4164cf1868b8ea7efeaa98edad7d2a4e14a9bd977c2818b12b75150cd2a2"
  end

  resource "azure-mgmt-loganalytics" do
    url "https://files.pythonhosted.org/packages/04/dc/48a624066655108e7f8490f643920c4ccec0798780a4e204e4ea93368039/azure-mgmt-loganalytics-13.0.0b6.zip"
    sha256 "f4aceb37f3ea14bffd1c5dcade31dc1f1de058621e183d9362d0966ad9c287c8"
  end

  resource "azure-mgmt-monitor" do
    url "https://files.pythonhosted.org/packages/e4/31/ebabafe0be1a177428880a8ec0fc44d681ac9dc1ae66a70d859cb5c7fbc3/azure-mgmt-monitor-6.0.2.tar.gz"
    sha256 "5ffbf500e499ab7912b1ba6d26cef26480d9ae411532019bb78d72562196e07b"
  end

  resource "azure-mgmt-msi" do
    url "https://files.pythonhosted.org/packages/77/d7/4ef788fb8e0f90a3fe5875b05dcef535ad4b4a766372af82870120cd5dd3/azure-mgmt-msi-7.0.0.zip"
    sha256 "72d46c9a62783ec4eab619be9d1b78ffebbdaa164d406fd303f16303f37256b2"
  end

  resource "azure-mgmt-network" do
    url "https://files.pythonhosted.org/packages/6b/f2/837f864ca73329becc9ab54b51469ab3bf16f6ec1c0792aecf665a9fdc93/azure-mgmt-network-23.0.0b2.zip"
    sha256 "0ce5802cee30943ea3f106cd6fcbe32ffa5dfb435ab9e7b72f4ac3cab6b74644"
  end

  resource "azure-mgmt-resource" do
    url "https://files.pythonhosted.org/packages/81/65/128984a9bdca0542a6fabd748e4b84398de625193379ac7fc3a0805465cd/azure-mgmt-resource-23.0.1.zip"
    sha256 "c2ba6cfd99df95f55f36eadc4245e3dc713257302a1fd0277756d94bd8cb28e0"
  end

  resource "azure-mgmt-storage" do
    url "https://files.pythonhosted.org/packages/49/5c/9fc3418570dcb5de5f883f909b894f9cdd77829c84afb08b7370c796334e/azure-mgmt-storage-21.1.0.tar.gz"
    sha256 "d6d3c0e917c988bc9ed0472477d3ef3f90886009eb1d97a711944f8375630162"
  end

  resource "azure-mgmt-subscription" do
    url "https://files.pythonhosted.org/packages/84/67/14b19a006e13d86f05ee59faf78c39dc443d4fd6967344e9c94f688949c1/azure-mgmt-subscription-3.1.1.zip"
    sha256 "4e255b4ce9b924357bb8c5009b3c88a2014d3203b2495e2256fa027bf84e800e"
  end

  resource "azure-monitor-query" do
    url "https://files.pythonhosted.org/packages/86/35/dc6e77d92f54a2031263eafdf6bc6b87e756b62cfb61c85240b193e2865d/azure-monitor-query-1.2.1.tar.gz"
    sha256 "6a958c1587b749f7317713beaa84b61ea93dcb0c267efb4dc7f305403629bb3f"
  end

  resource "azure-storage-blob" do
    url "https://files.pythonhosted.org/packages/fd/f8/59c209132b3b2993402df6b7e79728726927b53168624e917cd9daaffea8/azure-storage-blob-12.19.0.tar.gz"
    sha256 "26c0a4320a34a3c2a1b74528ba6812ebcb632a04cd67b1c7377232c4b01a5897"
  end

  resource "bcrypt" do
    url "https://files.pythonhosted.org/packages/72/07/6a6f2047a9dc9d012b7b977e4041d37d078b76b44b7ee4daf331c1e6fb35/bcrypt-4.1.2.tar.gz"
    sha256 "33313a1200a3ae90b75587ceac502b048b840fc69e7f7a0905b5f87fac7a1258"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/bd/c7/7cb38895bfcc0bff613d9c5360bbffa1b25525eba286e134c0e04321e81e/boto3-1.34.49.tar.gz"
    sha256 "96b9dc85ce8d52619b56ca7b1ac1423eaf0af5ce132904bcc8aa81396eec2abf"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/35/af/13cc893ac1a97a2068bcfe68cc8b59ed6dabdaec5c1af29dba14099c4d8f/botocore-1.34.49.tar.gz"
    sha256 "d89410bc60673eaff1699f3f1fdcb0e3a5e1f7a6a048c0d88c3ce5c3549433ec"
  end

  resource "cachetools" do
    url "https://files.pythonhosted.org/packages/10/21/1b6880557742c49d5b0c4dcf0cf544b441509246cdd71182e0847ac859d5/cachetools-5.3.2.tar.gz"
    sha256 "086ee420196f7b2ab9ca2db2520aca326318b68fe5ba8bc4d49cca91add450f2"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
    sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "cursor" do
    url "https://files.pythonhosted.org/packages/59/1b/ae231e1f9a8e1f970453f92fcb20a3fce87fa38753915477c26bc1655d86/cursor-1.3.5.tar.gz"
    sha256 "6758cae6ac14765ec85d9ce3f14fcb98fff5045f06d8398f1e8da8ce3acd2f20"
  end

  resource "dnspython" do
    url "https://files.pythonhosted.org/packages/37/7d/c871f55054e403fdfd6b8f65fd6d1c4e147ed100d3e9f9ba1fe695403939/dnspython-2.6.1.tar.gz"
    sha256 "e8f0f9c23a7b7cb99ded64e6c3a6f3e701d78f50c55e002b839dea7225cff7cc"
  end

  resource "docker" do
    url "https://files.pythonhosted.org/packages/25/14/7d40f8f64ceca63c741ee5b5611ead4fb8d3bcaf3e6ab57d2ab0f01712bc/docker-7.0.0.tar.gz"
    sha256 "323736fb92cd9418fc5e7133bc953e11a9da04f4483f828b527db553f1e7e5a3"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/01/d5/33a8992fe0e811211cd1cbc219cefa4732f9fb0555921346a59d1fec0040/fastapi-0.109.2.tar.gz"
    sha256 "f3817eac96fe4f65a2ebb4baa000f394e55f5fccdaf7f75250804bc58f354f73"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/70/70/41905c80dcfe71b22fb06827b8eae65781783d4a14194bce79d16a013263/filelock-3.13.1.tar.gz"
    sha256 "521f5f56c50f8426f5e03ad3b281b490a87ef15bc6c526f168290f0c7148d44e"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/cf/3d/2102257e7acad73efc4a0c306ad3953f68c504c16982bbdfee3ad75d8085/frozenlist-1.4.1.tar.gz"
    sha256 "c037a86e8513059a2613aaba4d817bb90b9d9b6b69aace3ce9c877e8c8ed402b"
  end

  resource "git-url-parse" do
    url "https://files.pythonhosted.org/packages/26/ea/c8c22b051026d9debe95c92df4fa0388f30fcde6f10fc0000058d13f6996/git-url-parse-1.2.2.tar.gz"
    sha256 "7b5f4e3aeb1d693afeee67a3bd4ac063f7206c2e8e46e559f0da0da98445f117"
  end

  resource "gitdb" do
    url "https://files.pythonhosted.org/packages/19/0d/bbb5b5ee188dec84647a4664f3e11b06ade2bde568dbd489d9d64adef8ed/gitdb-4.0.11.tar.gz"
    sha256 "bf5421126136d6d0af55bc1e7c1af1c397a34f5b7bd79e776cd3e89785c2b04b"
  end

  resource "gitpython" do
    url "https://files.pythonhosted.org/packages/8f/12/71a40ffce4aae431c69c45a191e5f03aca2304639264faf5666c2767acc4/GitPython-3.1.42.tar.gz"
    sha256 "2d99869e0fef71a73cbd242528105af1d6c1b108c60dfabd994bf292f76c3ceb"
  end

  resource "google-api-core" do
    url "https://files.pythonhosted.org/packages/58/e2/c2ce7bf379a7200ecab7de2cbf17dcbb3fe2ab5085925dfe6797e263a475/google-api-core-2.17.1.tar.gz"
    sha256 "9df18a1f87ee0df0bc4eea2770ebc4228392d8cc4066655b320e2cfccb15db95"
  end

  resource "google-api-python-client" do
    url "https://files.pythonhosted.org/packages/29/5b/f12ea82c03b0e114e5280363b88cff16a87ecee2b3c68dbda7f8eace693c/google-api-python-client-2.119.0.tar.gz"
    sha256 "ff9ef7539eaf7e088a481b25d1af4704210b07863e1d51b5ee498b910a3a46a3"
  end

  resource "google-auth" do
    url "https://files.pythonhosted.org/packages/9a/15/ac42556763c08e1b1821a7e55f3a93982c50ca7f25adf8f61a01dd2ed98b/google-auth-2.28.1.tar.gz"
    sha256 "34fc3046c257cedcf1622fc4b31fc2be7923d9b4d44973d481125ecc50d83885"
  end

  resource "google-auth-httplib2" do
    url "https://files.pythonhosted.org/packages/56/be/217a598a818567b28e859ff087f347475c807a5649296fb5a817c58dacef/google-auth-httplib2-0.2.0.tar.gz"
    sha256 "38aa7badf48f974f1eb9861794e9c0cb2a0511a4ec0679b1f886d108f5640e05"
  end

  resource "google-cloud-appengine-logging" do
    url "https://files.pythonhosted.org/packages/6f/f1/7a940f06c151b42a351c82d33059038ad62f709a64245864c52dc546ee1c/google-cloud-appengine-logging-1.4.2.tar.gz"
    sha256 "134de64a84017cfe26a4b3a325bcc9b4a2dba05f9c9d3902ee24b4b1fa3e28af"
  end

  resource "google-cloud-audit-log" do
    url "https://files.pythonhosted.org/packages/b1/3d/48e8b2c0cc7113d1674526b609944ef77d7182f233b23c50fec7106b2e2c/google-cloud-audit-log-0.2.5.tar.gz"
    sha256 "86e2faba3383adc8fd04a5bd7fd4f960b3e4aedaa7ed950f2f891ce16902eb6b"
  end

  resource "google-cloud-billing" do
    url "https://files.pythonhosted.org/packages/c0/5a/ebeb1cd1a7141411ba389f8420885902d94a6d5ed86975a98b8d0d80d01d/google-cloud-billing-1.13.2.tar.gz"
    sha256 "cee3d4e5f66131c5fef550a756b5b3743ed7c6ffa5d1732d78f841a0032d3fc3"
  end

  resource "google-cloud-compute" do
    url "https://files.pythonhosted.org/packages/0d/05/e5f404a1fdd8eb4b23055e2fccc1b88dcc8a59116b98a8179e5306421c33/google-cloud-compute-1.17.0.tar.gz"
    sha256 "74fb3b8527b461c0f796e36a1e417a4fc7d31c2e3fbb71cc270b30e931d62f8e"
  end

  resource "google-cloud-core" do
    url "https://files.pythonhosted.org/packages/b8/1f/9d1e0ba6919668608570418a9a51e47070ac15aeff64261fb092d8be94c0/google-cloud-core-2.4.1.tar.gz"
    sha256 "9b7749272a812bde58fff28868d0c5e2f585b82f37e09a1f6ed2d4d10f134073"
  end

  resource "google-cloud-logging" do
    url "https://files.pythonhosted.org/packages/8a/e0/53f7e11b57fb43c24ff2b0fcca38fec5760e54d1de98c5e6803346351dff/google-cloud-logging-3.9.0.tar.gz"
    sha256 "4decb1b0bed4a0e3c0e58a376646e6002d6be7cad039e3466822e8665072ea33"
  end

  resource "google-cloud-secret-manager" do
    url "https://files.pythonhosted.org/packages/9d/64/b16b8daddbc3cf4772487aa2d5be530bd9971524f177428b7168364be328/google-cloud-secret-manager-2.18.2.tar.gz"
    sha256 "a00d62115a70083e86b1d44ca7ebcae041b36a44cc62ea57de4005731f8d3c88"
  end

  resource "google-cloud-storage" do
    url "https://files.pythonhosted.org/packages/16/88/fc34f8c177ad56408d42f4b54c10402366d309737fae206d59fa16a4a27a/google-cloud-storage-2.14.0.tar.gz"
    sha256 "2d23fcf59b55e7b45336729c148bb1c464468c69d5efbaee30f7201dd90eb97e"
  end

  resource "google-crc32c" do
    url "https://files.pythonhosted.org/packages/d3/a5/4bb58448fffd36ede39684044df93a396c13d1ea3516f585767f9f960352/google-crc32c-1.5.0.tar.gz"
    sha256 "89284716bc6a5a415d4eaa11b1726d2d60a0cd12aadf5439828353662ede9dd7"
  end

  resource "google-resumable-media" do
    url "https://files.pythonhosted.org/packages/c1/78/638c9ab69571db4f7ec022383ce13ff8d0cea5b8afc168a51bb0e9353c10/google-resumable-media-2.7.0.tar.gz"
    sha256 "5f18f5fa9836f4b083162064a1c2c98c17239bfda9ca50ad970ccf905f3e625b"
  end

  resource "googleapis-common-protos" do
    url "https://files.pythonhosted.org/packages/4a/5f/eb12d721b45d20a977289d674e179995a0ddab1684d2c61b29a63d43a5f1/googleapis-common-protos-1.62.0.tar.gz"
    sha256 "83f0ece9f94e5672cced82f592d2a5edf527a96ed1794f0bab36d5735c996277"
  end

  resource "gpuhunt" do
    url "https://files.pythonhosted.org/packages/46/39/e9e0a4a07b7eff419b31fb142b9625db3fd128e37b6fa750aadbe779aa4e/gpuhunt-0.0.4.tar.gz"
    sha256 "75f91bbbaf81aaa7d1a20716eb236687eafe6918f99d347e65e81f876d15759e"
  end

  resource "greenlet" do
    url "https://files.pythonhosted.org/packages/17/14/3bddb1298b9a6786539ac609ba4b7c9c0842e12aa73aaa4d8d73ec8f8185/greenlet-3.0.3.tar.gz"
    sha256 "43374442353259554ce33599da8b692d5aa96f8976d567d4badf263371fbe491"
  end

  resource "grpc-google-iam-v1" do
    url "https://files.pythonhosted.org/packages/1e/38/a4094ad221c56a36f2049bc8bd7a5d0ea8359c1f7217a445f46c184d3752/grpc-google-iam-v1-0.13.0.tar.gz"
    sha256 "fad318608b9e093258fbf12529180f400d1c44453698a33509cc6ecf005b294e"
  end

  resource "grpcio" do
    url "https://files.pythonhosted.org/packages/50/4e/7ed8c24c93c8d000b9ea2927f555ae3b03cfabe035d65eda0db848cb20b6/grpcio-1.62.0.tar.gz"
    sha256 "748496af9238ac78dcd98cce65421f1adce28c3979393e3609683fcd7f3880d7"
  end

  resource "grpcio-status" do
    url "https://files.pythonhosted.org/packages/df/91/6d330a21e0d1d53fd04b2b5ff3e8951829f43f883e94004038baed48f3db/grpcio-status-1.62.0.tar.gz"
    sha256 "0d693e9c09880daeaac060d0c3dba1ae470a43c99e5d20dfeafd62cf7e08a85d"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/f5/38/3af3d3633a34a3316095b39c8e8fb4853a28a536e55d347bd8d8e9a14b03/h11-0.14.0.tar.gz"
    sha256 "8f19fbbe99e72420ff35c00b27a34cb9937e902a8b810e2c88300c6f0a3b699d"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/03/9d/2055e6b65592d3a485a1141761ba7047674bbe085cebac0988b30e93c9e6/httpcore-1.0.4.tar.gz"
    sha256 "cb2839ccfcba0d2d3c1131d3c3e26dfc327326fbe7a5dc0dbfe9f6c9151bb022"
  end

  resource "httplib2" do
    url "https://files.pythonhosted.org/packages/3d/ad/2371116b22d616c194aa25ec410c9c6c37f23599dcd590502b74db197584/httplib2-0.22.0.tar.gz"
    sha256 "d7a10bc5ef5ab08322488bde8c726eeee5c8618723fdb399597ec58f3d82df81"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/5c/2d/3da5bdf4408b8b2800061c339f240c1802f2e82d55e50bd39c5a881f47f0/httpx-0.27.0.tar.gz"
    sha256 "a0cb88a46f32dc874e04ee956e4c2764aba2aa228f650b06788ba6bda2962ab5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/bf/3f/ea4b9117521a1e9c50344b909be7886dd00a519552724809bb1f486986c2/idna-3.6.tar.gz"
    sha256 "9ecdbbd083b06798ae1e86adcbfe8ab1479cf864e4ee30fe4e46a003d12491ca"
  end

  resource "isodate" do
    url "https://files.pythonhosted.org/packages/db/7a/c0a56c7d56c7fa723988f122fa1f1ccf8c5c4ccc48efad0d214b49e5b1af/isodate-0.6.1.tar.gz"
    sha256 "48c5881de7e8b0a0d648cb024c8062dc84e7b840ed81e864c7614fd3c127bde9"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/4d/c5/3f6165d3df419ea7b0990b3abed4ff348946a826caf0e7c990b65ff7b9be/jsonschema-4.21.1.tar.gz"
    sha256 "85727c00279f5fa6bedbe6238d2aa6403bedd8b4864ab11207d07df3cc1b2ee5"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/f8/b9/cc0cc592e7c195fb8a650c1d5990b10175cf13b4c97465c72ec841de9e4b/jsonschema_specifications-2023.12.1.tar.gz"
    sha256 "48a76787b3e70f5ed53f1160d2b81f586e4ca6d1548c5de7085d1682674764cc"
  end

  resource "mako" do
    url "https://files.pythonhosted.org/packages/d4/1b/71434d9fa9be1ac1bc6fb5f54b9d41233be2969f16be759766208f49f072/Mako-1.3.2.tar.gz"
    sha256 "2a0c8ad7f6274271b3bb7467dd37cf9cc6dab4bc19cb69a4ef10669402de698e"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/87/5b/aae44c6655f3801e81aa3eef09dbbf012431987ba564d7231722f68df02d/MarkupSafe-2.1.5.tar.gz"
    sha256 "d283d37a890ba4c1ae73ffadf8046435c76e7bc2247bbb63c00bd1a709c6544b"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "msal" do
    url "https://files.pythonhosted.org/packages/a5/b0/006d1297baa1a6706525a3ae64d9575135128e260f9c0c74da5f5b8c584b/msal-1.27.0.tar.gz"
    sha256 "3109503c038ba6b307152b0e8d34f98113f2e7a78986e28d0baf5b5303afda52"
  end

  resource "msal-extensions" do
    url "https://files.pythonhosted.org/packages/cb/ba/618771542cdc4bc5314c395076c397d67e2bdcd88564c6ca712a2497d1c6/msal-extensions-1.1.0.tar.gz"
    sha256 "6ab357867062db7b253d0bd2df6d411c7891a0ee7308d54d1e4317c1d1c54252"
  end

  resource "msrest" do
    url "https://files.pythonhosted.org/packages/68/77/8397c8fb8fc257d8ea0fa66f8068e073278c65f05acb17dcb22a02bfdc42/msrest-0.7.1.zip"
    sha256 "6e7661f46f3afd88b75667b7187a92829924446c7ea1d169be8c4bb7eeb788b9"
  end

  resource "msrestazure" do
    url "https://files.pythonhosted.org/packages/48/fc/5c2940301a83f18884a8e3aead2b2ff177a1a373f75c7b17e2e404199b2a/msrestazure-0.6.4.tar.gz"
    sha256 "a06f0dabc9a6f5efe3b6add4bd8fb623aeadacf816b7a35b0f89107e0544d189"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/f9/79/722ca999a3a09a63b35aac12ec27dfa8e5bb3a38b0f857f7a1a209a88836/multidict-6.0.5.tar.gz"
    sha256 "f7e301075edaf50500f0b341543c41194d8df3ae5caf4702f2095f3ca73dd8da"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/6d/fa/fbf4001037904031639e6bfbfc02badfc7e12f137a8afa254df6c4c8a670/oauthlib-3.2.2.tar.gz"
    sha256 "9859c40929662bec5d64f34d01c99e093149682a3f38915dc0655d5a633dd918"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/fb/2b/9b9c33ffed44ee921d0967086d653047286054117d584f1b1a7c22ceaf7b/packaging-23.2.tar.gz"
    sha256 "048fb0e9405036518eaaf48a55953c750c11e1a1b68e0dd1a9d62ed0c092cfc5"
  end

  resource "paramiko" do
    url "https://files.pythonhosted.org/packages/cc/af/11996c4df4f9caff87997ad2d3fd8825078c277d6a928446d2b6cf249889/paramiko-3.4.0.tar.gz"
    sha256 "aac08f26a31dc4dffd92821527d1682d99d52f9ef6851968114a8728f3c274d3"
  end

  resource "pbr" do
    url "https://files.pythonhosted.org/packages/8d/c2/ee43b3b11bf2b40e56536183fc9f22afbb04e882720332b6276ee2454c24/pbr-6.0.0.tar.gz"
    sha256 "d1377122a5a00e2f940ee482999518efe16d745d423a670c27773dfbc3c9a7d9"
  end

  resource "portalocker" do
    url "https://files.pythonhosted.org/packages/35/00/0f230921ba852226275762ea3974b87eeca36e941a13cd691ed296d279e5/portalocker-2.8.2.tar.gz"
    sha256 "2b035aa7828e46c58e9b31390ee1f169b98e1066ab10b9a6a861fe7e25ee4f33"
  end

  resource "proto-plus" do
    url "https://files.pythonhosted.org/packages/91/2d/8c7fa3011928b024b10b80878160bf4e374eccb822a5d090f3ebcf175f6a/proto-plus-1.23.0.tar.gz"
    sha256 "89075171ef11988b3fa157f5dbd8b9cf09d65fffee97e29ce403cd8defba19d2"
  end

  resource "pyasn1" do
    url "https://files.pythonhosted.org/packages/ce/dc/996e5446a94627fe8192735c20300ca51535397e31e7097a3cc80ccf78b7/pyasn1-0.5.1.tar.gz"
    sha256 "6d391a96e59b23130a5cfa74d6fd7f388dbbe26cc8f1edf39fdddf08d9d6676c"
  end

  resource "pyasn1-modules" do
    url "https://files.pythonhosted.org/packages/3b/e4/7dec823b1b5603c5b3c51e942d5d9e65efd6ff946e713a325ed4146d070f/pyasn1_modules-0.3.0.tar.gz"
    sha256 "5bd01446b736eb9d31512a30d46c1ac3395d676c6f3cafa4c03eb54b9925631c"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/df/ab/67eda485b025e9253cce0eaede9b6158a08f62af7013a883b2c8775917b2/pydantic-1.10.14.tar.gz"
    sha256 "46f17b832fe27de7850896f3afee50ea682220dd218f7e9c88d436788419dca6"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/55/59/8bccf4157baf25e4aa5a0bb7fa3ba8600907de105ebc22b0c78cfbf6f565/pygments-2.17.2.tar.gz"
    sha256 "da46cec9fd2de5be3a8a784f434e4c4ab670b4ff54d605c4c2717e9d49c4c367"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/30/72/8259b2bccfe4673330cea843ab23f86858a419d8f1493f66d413a76c7e3b/PyJWT-2.8.0.tar.gz"
    sha256 "57e28d156e3d5c10088e0c68abb90bfac3df82b40a71bd0daa20c65ccd5c23de"
  end

  resource "pynacl" do
    url "https://files.pythonhosted.org/packages/a7/22/27582568be639dfe22ddb3902225f91f2f17ceff88ce80e4db396c8986da/PyNaCl-1.5.0.tar.gz"
    sha256 "8ac7448f09ab85811607bdd21ec2464495ac8b7c66d146bf545b0f08fb9220ba"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/37/fe/65c989f70bd630b589adfbbcd6ed238af22319e90f059946c26b4835e44b/pyparsing-3.1.1.tar.gz"
    sha256 "ede28a1a32462f5a9705e07aea48001a08f7cf81a021585011deba701581a0db"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/5c/0f/9c55ac6c84c0336e22a26fa84ca6c51d58d7ac3a2d78b0dfa8748826c883/python_multipart-0.0.9.tar.gz"
    sha256 "03f54688c663f1b7977105f021043b0793151e4cb1c1a9d4a11fc13d622c4026"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/90/26/9f1f00a5d021fff16dee3de13d43e5e978f3d58928e129c3a62cf7eb9738/pytz-2024.1.tar.gz"
    sha256 "2a29735ea9c18baf14b448846bde5a48030ed267578472d8955cd0e7443a9812"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/21/c5/b99dd501aa72b30a5a87d488d7aa76ec05bdf0e2c7439bc82deb9448dd9a/referencing-0.33.0.tar.gz"
    sha256 "c775fedf74bc0f9189c2a3be1c12fd03e8c23f4d371dce795df44e06c5b412f7"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "requests-oauthlib" do
    url "https://files.pythonhosted.org/packages/95/52/531ef197b426646f26b53815a7d2a67cb7a331ef098bb276db26a68ac49f/requests-oauthlib-1.3.1.tar.gz"
    sha256 "75beac4a47881eeb94d5ea5d6ad31ef88856affe2332b9aafb52c6452ccf0d7a"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/a7/ec/4a7d80728bd429f7c0d4d51245287158a1516315cadbb146012439403a9d/rich-13.7.0.tar.gz"
    sha256 "5cb5123b5cf9ee70584244246816e9114227e0b98ad9176eede6ad54bf5403fa"
  end

  resource "rich-argparse" do
    url "https://files.pythonhosted.org/packages/7b/04/4b0b9b06662a4559041a88c2d31e93ecbc8aca1c45fee10a0c1a000b7274/rich_argparse-1.4.0.tar.gz"
    sha256 "c275f34ea3afe36aec6342c2a2298893104b5650528941fb53c21067276dba19"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/55/ba/ce7b9f0fc5323f20ffdf85f682e51bee8dc03e9b54503939ebb63d1d0d5e/rpds_py-0.18.0.tar.gz"
    sha256 "42821446ee7a76f5d9f71f9e33a4fb2ffd724bb3e7f93386150b61a43115788d"
  end

  resource "rsa" do
    url "https://files.pythonhosted.org/packages/aa/65/7d973b89c4d2351d7fb232c2e452547ddfa243e93131e7cfa766da627b52/rsa-4.9.tar.gz"
    sha256 "e38464a49c6c85d7f1351b0126661487a7e0a14a50f1675ec50eb34d4f20ef21"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/a0/b5/4c570b08cb85fdcc65037b5229e00412583bb38d974efecb7ec3495f40ba/s3transfer-0.10.0.tar.gz"
    sha256 "d0c8bbf672d5eebbe4e57945e23b972d963f07d82f661cabf678a5c88831595b"
  end

  resource "sentry-sdk" do
    url "https://files.pythonhosted.org/packages/70/c6/d2e609b02fb6f36e7ec1d2c59df057cccb7d3b99efb908bb8832ded12838/sentry-sdk-1.40.5.tar.gz"
    sha256 "d2dca2392cc5c9a2cc9bb874dd7978ebb759682fe4fe889ee7e970ee8dd1c61e"
  end

  resource "simple-term-menu" do
    url "https://files.pythonhosted.org/packages/a1/a0/7e78b93510886f6fb5b7146bd5cee03986fa5c2319644155c275e389c55a/simple-term-menu-1.6.4.tar.gz"
    sha256 "be9c5dbd8df12a404b14cd8e95d6fc02d58c60e2555f65ddde41777c487fb3b9"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "smmap" do
    url "https://files.pythonhosted.org/packages/88/04/b5bf6d21dc4041000ccba7eb17dd3055feb237e7ffc2c20d3fae3af62baa/smmap-5.0.1.tar.gz"
    sha256 "dceeb6c0028fdb6734471eb07c0cd2aae706ccaecab45965ee83f11c8d3b1f62"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/cd/50/d49c388cae4ec10e8109b1b833fd265511840706808576df3ada99ecb0ac/sniffio-1.3.0.tar.gz"
    sha256 "e60305c5e5d314f5389259b7f22aaa33d8f7dee49763119234af3755c55b9101"
  end

  resource "sqlalchemy" do
    url "https://files.pythonhosted.org/packages/b9/fc/327f0072d1f5231d61c715ad52cb7819ec60f0ac80dc1e507bc338919caa/SQLAlchemy-2.0.27.tar.gz"
    sha256 "86a6ed69a71fe6b88bf9331594fa390a2adda4a49b5c06f98e47bf0d392534f8"
  end

  resource "sqlalchemy-utils" do
    url "https://files.pythonhosted.org/packages/a3/e0/6906a8a9b8e9deb82923e02e2c1f750c567d69a34f6e1fe566792494a682/SQLAlchemy-Utils-0.41.1.tar.gz"
    sha256 "a2181bff01eeb84479e38571d2c0718eb52042f9afd8c194d0d02877e84b7d74"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/be/47/1bba49d42d63f4453f0a64a20acbf2d0bd2f5a8cde6a166ee66c074a08f8/starlette-0.36.3.tar.gz"
    sha256 "90a671733cfb35771d8cc605e0b679d23b992f8dcfad48cc60b38cb29aeb7080"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/ea/85/3ce0f9f7d3f596e7ea57f4e5ce8c18cb44e4a9daa58ddb46ee0d13d6bff8/tqdm-4.66.2.tar.gz"
    sha256 "6cd52cdf0fef0e0f543299cfc96fec90d7b8a7e88745f411ec33eb44d5ed3531"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/0c/1d/eb26f5e75100d531d7399ae800814b069bc2ed2a7410834d57374d010d96/typing_extensions-4.9.0.tar.gz"
    sha256 "23478f88c37f27d76ac8aee6c905017a143b0b1b886c3c9f66bc2fd94f9f5783"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/04/d3/c19d65ae67636fe63953b20c2e4a8ced4497ea232c43ff8d01db16de8dc0/tzlocal-5.2.tar.gz"
    sha256 "8d399205578f1a9342816409cc1e46a93ebd5755e39ea2d85334bea911bf0e6e"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/d2/5a/4742fdba39cd02a56226815abfa72fe0aa81c33bed16ed045647d6000eba/uritemplate-4.1.1.tar.gz"
    sha256 "4346edfc5c3b79f694bccd6d6099a322bbeb628dbf2cd86eea55a456ce5124f0"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/af/47/b215df9f71b4fdba1025fc05a77db2ad243fa0926755a52c5e71659f4e3c/urllib3-2.0.7.tar.gz"
    sha256 "c97dfde1f7bd43a71c8d2a58e369e9b2bf692d1334ea9f9cae55add7d0dd0f84"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/09/d8/8aa69c76585035ca81851d99c3b00fd6be050aefd478a5376ff9fc5feb69/uvicorn-0.27.1.tar.gz"
    sha256 "3d9a267296243532db80c83a959a3400502165ade2c1338dea4e67915fd4745a"
  end

  resource "watchfiles" do
    url "https://files.pythonhosted.org/packages/66/79/0ee412e1228aaf6f9568aa180b43cb482472de52560fbd7c283c786534af/watchfiles-0.21.0.tar.gz"
    sha256 "c76c635fabf542bb78524905718c39f736a98e5ab25b23ec6d4abede1a85a6a3"
  end

  resource "websocket-client" do
    url "https://files.pythonhosted.org/packages/20/07/2a94288afc0f6c9434d6709c5320ee21eaedb2f463ede25ed9cf6feff330/websocket-client-1.7.0.tar.gz"
    sha256 "10e511ea3a8c744631d3bd77e61eb17ed09304c413ad42cf6ddfa4c7787e8fe6"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/e0/ad/bedcdccbcbf91363fd425a948994f3340924145c2bc8ccb296f4a1e52c28/yarl-1.9.4.tar.gz"
    sha256 "566db86717cf8080b99b58b083b773a908ae40f06681e87e589a976faf8246bf"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    expected = "No default project, specify project name"
    assert_match expected, shell_output("#{bin}/dstack init 2>&1", 1)

    assert_match version.to_s, shell_output("#{bin}/dstack --version")
  end
end
