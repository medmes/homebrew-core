class Prowler < Formula
  include Language::Python::Virtualenv

  desc "Open Source Security tool to perform Cloud Security best practices"
  homepage "https://prowler.pro/"
  url "https://files.pythonhosted.org/packages/15/41/1c531aa0742ada57c2e49d9dee020075b506a1483c54f1c30415d41cd0a2/prowler-3.5.3.tar.gz"
  sha256 "c6d0cdd722cdca282e7b53a0ee5dcf3df66d3cbac8630b534be4d68ed8babd0a"
  license "Apache-2.0"

  bottle do
    rebuild 1
    sha256 cellar: :any,                 arm64_ventura:  "97f53378135914d5b20ad968b45638b4beb7fa624ebe408b048d8c8a66e31c90"
    sha256 cellar: :any,                 arm64_monterey: "57b4efe313673c74152017f98244b8ba7d6e77b06718b57a9e9e48b62fc592b4"
    sha256 cellar: :any,                 arm64_big_sur:  "4fdd9d10ff916ee5fdf148d04082928bebdb587229fed4370cb1e3a82456bfcc"
    sha256 cellar: :any,                 ventura:        "512f50f36e46adf250984a9e1255161f15c08769e3baedf4d4a0d0a9f8da04bb"
    sha256 cellar: :any,                 monterey:       "85f45cde214594b181549e8b0287ea22da6d787fdfd11d3886b7603595d57269"
    sha256 cellar: :any,                 big_sur:        "5783139d3ea915ce277b0792482f1b00eb6ce0858f3e9dcb8076a4e8e6600a36"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "43a4540bc87829aaa193a355e06f75261600712ac014710c83d6e5252fbe598b"
  end

  # `pkg-config`, `rust`, and `openssl@1.1` are for cryptography.
  depends_on "pkg-config" => :build
  depends_on "rust" => :build
  depends_on "cffi"
  depends_on "openssl@1.1"
  depends_on "pycparser"
  depends_on "python-tabulate"
  depends_on "python-typing-extensions"
  depends_on "python@3.11"
  depends_on "pyyaml"
  depends_on "six"

  resource "about-time" do
    url "https://files.pythonhosted.org/packages/1c/3f/ccb16bdc53ebb81c1bf837c1ee4b5b0b69584fd2e4a802a2a79936691c0a/about-time-4.2.1.tar.gz"
    sha256 "6a538862d33ce67d997429d14998310e1dbfda6cb7d9bbfbf799c4709847fece"
  end

  resource "alive-progress" do
    url "https://files.pythonhosted.org/packages/db/ad/f67b278cc654d51872dc1ed437f383522f9b715043ff80a3401fcdebf98e/alive-progress-3.1.1.tar.gz"
    sha256 "6d9ad57add9c1341aa57d93e6370c76c9fc0c9fdc631e1c56b48e59daa32106e"
  end

  resource "awsipranges" do
    url "https://files.pythonhosted.org/packages/19/2e/6efa95f995369da828715f41705686cd214b9259ed758266942553d40441/awsipranges-0.3.3.tar.gz"
    sha256 "4f0b3f22a9dc1163c85b513bed812b6c92bdacd674e6a7b68252a3c25b99e2c0"
  end

  resource "azure-common" do
    url "https://files.pythonhosted.org/packages/3e/71/f6f71a276e2e69264a97ad39ef850dca0a04fce67b12570730cb38d0ccac/azure-common-1.1.28.zip"
    sha256 "4ac0cd3214e36b6a1b6a442686722a5d8cc449603aa833f3f0f40bda836704a3"
  end

  resource "azure-core" do
    url "https://files.pythonhosted.org/packages/da/2d/afa02427822abf435ae0ec10b8b53626f9fbf32f694610141c283ad66e98/azure-core-1.27.0.zip"
    sha256 "068ea8b61888165b1e749892785936e293e35070a10ea10c8c11ec9f5186a2f8"
  end

  resource "azure-identity" do
    url "https://files.pythonhosted.org/packages/ad/3e/34b445ef2f536f4710903cbc3ca33c4272ad37f676609188c4544dc8463a/azure-identity-1.13.0.zip"
    sha256 "c931c27301ffa86b07b4dcf574e29da73e3deba9ab5d1fe4f445bb6a3117e260"
  end

  resource "azure-mgmt-authorization" do
    url "https://files.pythonhosted.org/packages/7b/39/46adcbabc61a6d91f8514b46a2b64cfba365170325a6c38c31e2c1567090/azure-mgmt-authorization-3.0.0.zip"
    sha256 "0a5d7f683bf3372236b841cdbd4677f6b08ed7ce41b999c3e644d4286252057d"
  end

  resource "azure-mgmt-core" do
    url "https://files.pythonhosted.org/packages/14/95/2b2085e40f4b9de88ad256428a669583066d8ab348fc19110c7d04c3189b/azure-mgmt-core-1.4.0.zip"
    sha256 "d195208340094f98e5a6661b781cde6f6a051e79ce317caabd8ff97030a9b3ae"
  end

  resource "azure-mgmt-security" do
    url "https://files.pythonhosted.org/packages/ee/ba/a3ac088d30e0179df32e0a4981e670e96138b6141d4be821ccfd9ea5951b/azure-mgmt-security-5.0.0.zip"
    sha256 "38b03efe82c2344cea203fda95e6d00b7ac22782fa1c0b585cd0ea2c8ff3e702"
  end

  resource "azure-mgmt-storage" do
    url "https://files.pythonhosted.org/packages/83/9d/f486f601c9902bce42ea77adfa6f81895535adfb3eadc1f8522b1abbd44b/azure-mgmt-storage-21.0.0.zip"
    sha256 "6eb13eeecf89195b2b5f47be0679e3f27888efd7bd2132eec7ebcbce75cb1377"
  end

  resource "azure-mgmt-subscription" do
    url "https://files.pythonhosted.org/packages/84/67/14b19a006e13d86f05ee59faf78c39dc443d4fd6967344e9c94f688949c1/azure-mgmt-subscription-3.1.1.zip"
    sha256 "4e255b4ce9b924357bb8c5009b3c88a2014d3203b2495e2256fa027bf84e800e"
  end

  resource "azure-storage-blob" do
    url "https://files.pythonhosted.org/packages/fb/b1/5f043703c58cb67f113dded485ef3d7610e215b3921c65e52030791b7c76/azure-storage-blob-12.16.0.zip"
    sha256 "43b45f19a518a5c6895632f263b3825ebc23574f25cc84b66e1630a6160e466f"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/6a/75/480b53782e0acde46db78bea73a55686514452f0ff4404d8ece4f391cd37/boto3-1.26.138.tar.gz"
    sha256 "f0a78f94a7140b60960898fd86677e4e73cc96bd7f3e5c64fc5cc1818d04c7b8"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/6d/f4/07a2ad9a3ba8e393616ad9401ca2f73d22a4144f893c2e6735a37a212fe1/botocore-1.29.138.tar.gz"
    sha256 "31edc237088c104f7a05887646bbec31d7459dd2e108fd90cbffa315902817e2"
  end

  resource "cachetools" do
    url "https://files.pythonhosted.org/packages/9d/8b/8e2ebf5ee26c21504de5ea2fb29cc6ae612b35fd05f959cdb641feb94ec4/cachetools-5.3.1.tar.gz"
    sha256 "dce83f2d9b4e1f732a8cd44af8e8fab2dbe46201467fc98b3ef8f269092bf62b"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/93/71/752f7a4dd4c20d6b12341ed1732368546bc0ca9866139fe812f6009d9ac7/certifi-2023.5.7.tar.gz"
    sha256 "0f0d56dc5a6ad56fd4ba36484d6cc34451e1c6548c61daad8c320169f91eddc7"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/ff/d7/8d757f8bd45be079d76309248845a04f09619a7b17d6dfc8c9ff6433cac2/charset-normalizer-3.1.0.tar.gz"
    sha256 "34e0a2f9c370eb95597aae63bf85eb5e96826d81e3dcf88b8886012906f509b5"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
    sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
  end

  resource "click-plugins" do
    url "https://files.pythonhosted.org/packages/5f/1d/45434f64ed749540af821fd7e42b8e4d23ac04b1eda7c26613288d6cd8a8/click-plugins-1.1.1.tar.gz"
    sha256 "46ab999744a9d831159c3411bb0c79346d94a444df9a3a3742e9ed63645f264b"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "contextlib2" do
    url "https://files.pythonhosted.org/packages/c7/13/37ea7805ae3057992e96ecb1cffa2fa35c2ef4498543b846f90dd2348d8f/contextlib2-21.6.0.tar.gz"
    sha256 "ab1e2bfe1d01d968e1b7e8d9023bc51ef3509bba217bb730cee3827e1ee82869"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/19/8c/47f061de65d1571210dc46436c14a0a4c260fd0f3eaf61ce9b9d445ce12f/cryptography-41.0.1.tar.gz"
    sha256 "d34579085401d3f49762d2f7d6634d6b6c2ae1242202e860f4d26b046e3a1006"
  end

  resource "detect-secrets" do
    url "https://files.pythonhosted.org/packages/f1/55/292f9ce52bba7f3df0a9cde65dabf458d3aeec6a63bf737e5a5fa9fe6d31/detect_secrets-1.4.0.tar.gz"
    sha256 "d56787e339758cef48c9ccd6692f7a094b9963c979c9813580b0169e41132833"
  end

  resource "google-api-core" do
    url "https://files.pythonhosted.org/packages/2b/15/7bafa5379a228ed72baf769eea5e6019a944469fe637ea0742c0351109bf/google-api-core-2.11.0.tar.gz"
    sha256 "4b9bb5d5a380a0befa0573b302651b8a9a89262c1730e37bf423cec511804c22"
  end

  resource "google-api-python-client" do
    url "https://files.pythonhosted.org/packages/35/2e/818e946a4ee38995acfcab5e0f7391bff313a3c24fefc7882c5e1c9fa580/google-api-python-client-2.86.0.tar.gz"
    sha256 "3ca4e93821f4e9ac29b91ab0d9df168b42c8ad0fb8bff65b8c2ccb2d462b0464"
  end

  resource "google-auth" do
    url "https://files.pythonhosted.org/packages/77/52/4e59fb37fd1f6fe4609f91d4792640b50294172616ff5bf3108eafa17f9a/google-auth-2.19.1.tar.gz"
    sha256 "a9cfa88b3e16196845e64a3658eb953992129d13ac7337b064c6546f77c17183"
  end

  resource "google-auth-httplib2" do
    url "https://files.pythonhosted.org/packages/c6/b5/a9e956fd904ecb34ec9d297616fe98fa4106fc12f3b0a914dec983c267b9/google-auth-httplib2-0.1.0.tar.gz"
    sha256 "a07c39fd632becacd3f07718dfd6021bf396978f03ad3ce4321d060015cc30ac"
  end

  resource "googleapis-common-protos" do
    url "https://files.pythonhosted.org/packages/9a/19/02a6256e00653b0fec9f356678df0ed996cb9d89aeb472c8c4df9490cac0/googleapis-common-protos-1.59.0.tar.gz"
    sha256 "4168fcb568a826a52f23510412da405abd93f4d23ba544bb68d943b14ba3cb44"
  end

  resource "grapheme" do
    url "https://files.pythonhosted.org/packages/ce/e7/bbaab0d2a33e07c8278910c1d0d8d4f3781293dfbc70b5c38197159046bf/grapheme-0.6.0.tar.gz"
    sha256 "44c2b9f21bbe77cfb05835fec230bd435954275267fea1858013b102f8603cca"
  end

  resource "httplib2" do
    url "https://files.pythonhosted.org/packages/3d/ad/2371116b22d616c194aa25ec410c9c6c37f23599dcd590502b74db197584/httplib2-0.22.0.tar.gz"
    sha256 "d7a10bc5ef5ab08322488bde8c726eeee5c8618723fdb399597ec58f3d82df81"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "isodate" do
    url "https://files.pythonhosted.org/packages/db/7a/c0a56c7d56c7fa723988f122fa1f1ccf8c5c4ccc48efad0d214b49e5b1af/isodate-0.6.1.tar.gz"
    sha256 "48c5881de7e8b0a0d648cb024c8062dc84e7b840ed81e864c7614fd3c127bde9"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "msal" do
    url "https://files.pythonhosted.org/packages/10/b1/a648bdd3116d0028685987fb4120a37bb91d268509e09dfbafd6ae8bed87/msal-1.22.0.tar.gz"
    sha256 "8a82f5375642c1625c89058018430294c109440dce42ea667d466c2cab520acd"
  end

  resource "msal-extensions" do
    url "https://files.pythonhosted.org/packages/33/5e/2e23593c67df0b21ffb141c485ca0ae955569203d7ff5064040af968cb81/msal-extensions-1.0.0.tar.gz"
    sha256 "c676aba56b0cce3783de1b5c5ecfe828db998167875126ca4b47dc6436451354"
  end

  resource "msgraph-core" do
    url "https://files.pythonhosted.org/packages/35/94/e2a15b577044b6b0e4b610a26fcd4439863d8d21bda419e0fd24580316cd/msgraph-core-0.2.2.tar.gz"
    sha256 "147324246788abe8ed7e05534cd9e4e0ec98b33b30e011693b8d014cebf97f63"
  end

  resource "msrest" do
    url "https://files.pythonhosted.org/packages/68/77/8397c8fb8fc257d8ea0fa66f8068e073278c65f05acb17dcb22a02bfdc42/msrest-0.7.1.zip"
    sha256 "6e7661f46f3afd88b75667b7187a92829924446c7ea1d169be8c4bb7eeb788b9"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/6d/fa/fbf4001037904031639e6bfbfc02badfc7e12f137a8afa254df6c4c8a670/oauthlib-3.2.2.tar.gz"
    sha256 "9859c40929662bec5d64f34d01c99e093149682a3f38915dc0655d5a633dd918"
  end

  resource "portalocker" do
    url "https://files.pythonhosted.org/packages/1f/f8/969e6f280201b40b31bcb62843c619f343dcc351dff83a5891530c9dd60e/portalocker-2.7.0.tar.gz"
    sha256 "032e81d534a88ec1736d03f780ba073f047a06c478b06e2937486f334e955c51"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/7f/2e/49d5a453d68febffbb602ad985b7432377e36bdf47198c6ab05021b33016/protobuf-4.23.2.tar.gz"
    sha256 "20874e7ca4436f683b64ebdbee2129a5a2c301579a67d1a7dda2cdf62fb7f5f7"
  end

  resource "pyasn1" do
    url "https://files.pythonhosted.org/packages/61/ef/945a8bcda7895717c8ba4688c08a11ef6454f32b8e5cb6e352a9004ee89d/pyasn1-0.5.0.tar.gz"
    sha256 "97b7290ca68e62a832558ec3976f15cbf911bf5d7c7039d8b861c2a0ece69fde"
  end

  resource "pyasn1-modules" do
    url "https://files.pythonhosted.org/packages/3b/e4/7dec823b1b5603c5b3c51e942d5d9e65efd6ff946e713a325ed4146d070f/pyasn1_modules-0.3.0.tar.gz"
    sha256 "5bd01446b736eb9d31512a30d46c1ac3395d676c6f3cafa4c03eb54b9925631c"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/43/5f/e53a850fd32dddefc998b6bfcbda843d4ff5b0dcac02a92e414ba6c97d46/pydantic-1.10.7.tar.gz"
    sha256 "cfc83c0678b6ba51b0532bea66860617c4cd4251ecf76e9846fa5a9f3454e97e"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/e0/f0/9804c72e9a314360c135f42c434eb42eaabb5e7ebad760cbd8fc7023be38/PyJWT-2.7.0.tar.gz"
    sha256 "bd6ca4a3c4285c1a2d4349e5a035fdf8fb94e04ccd0fcbe6ba289dae9cc3e074"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/71/22/207523d16464c40a0310d2d4d8926daffa00ac1f5b1576170a32db749636/pyparsing-3.0.9.tar.gz"
    sha256 "2b020ecf7d21b687f219b71ecad3631f644a47f01403fa1d1036b0c6416d70fb"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "requests-oauthlib" do
    url "https://files.pythonhosted.org/packages/95/52/531ef197b426646f26b53815a7d2a67cb7a331ef098bb276db26a68ac49f/requests-oauthlib-1.3.1.tar.gz"
    sha256 "75beac4a47881eeb94d5ea5d6ad31ef88856affe2332b9aafb52c6452ccf0d7a"
  end

  resource "rsa" do
    url "https://files.pythonhosted.org/packages/aa/65/7d973b89c4d2351d7fb232c2e452547ddfa243e93131e7cfa766da627b52/rsa-4.9.tar.gz"
    sha256 "e38464a49c6c85d7f1351b0126661487a7e0a14a50f1675ec50eb34d4f20ef21"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/49/bd/def2ab4c04063a5e114963aae90bcd3e3aca821a595124358b3b00244407/s3transfer-0.6.1.tar.gz"
    sha256 "640bb492711f4c0c0905e1f62b6aaeb771881935ad27884852411f8e9cacbca9"
  end

  resource "schema" do
    url "https://files.pythonhosted.org/packages/4e/e8/01e1b46d9e04cdaee91c9c736d9117304df53361a191144c8eccda7f0ee9/schema-0.7.5.tar.gz"
    sha256 "f06717112c61895cabc4707752b88716e8420a8819d71404501e114f91043197"
  end

  resource "shodan" do
    url "https://files.pythonhosted.org/packages/91/a9/693d63433cd3ab659862a05d439f420fae5aee1e1dc9bce03c659122b3f8/shodan-1.29.1.tar.gz"
    sha256 "e2af6254e19d2a8fa4e929738be551e25dc7aafc394732e776e7e30fa44ce339"
  end

  resource "slack-sdk" do
    url "https://files.pythonhosted.org/packages/67/db/a684491e6d791aa4052ccc49d11dc492d37cb2c9261e53fa87871553960a/slack_sdk-3.21.3.tar.gz"
    sha256 "20829bdc1a423ec93dac903470975ebf3bc76fd3fd91a4dadc0eeffc940ecb0c"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/d2/5a/4742fdba39cd02a56226815abfa72fe0aa81c33bed16ed045647d6000eba/uritemplate-4.1.1.tar.gz"
    sha256 "4346edfc5c3b79f694bccd6d6099a322bbeb628dbf2cd86eea55a456ce5124f0"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e2/7d/539e6f0cf9f0b95b71dd701a56dae89f768cd39fd8ce0096af3546aeb5a3/urllib3-1.26.16.tar.gz"
    sha256 "8f135f6502756bde6b2a9b28989df5fbe87c9970cecaa69041edcce7f0589b14"
  end

  resource "xlsxwriter" do
    url "https://files.pythonhosted.org/packages/04/d4/3cc6a3cd112a91d95f554ca8909c8528addf06d79c51ccd40e39a6ff48e1/XlsxWriter-3.1.2.tar.gz"
    sha256 "78751099a770273f1c98b8d6643351f68f98ae8e6acf9d09d37dc6798f8cd3de"
  end

  def install
    # Ensure that the `openssl` crate picks up the intended library.
    ENV["OPENSSL_DIR"] = Formula["openssl@1.1"].opt_prefix
    ENV["OPENSSL_NO_VENDOR"] = "1"

    virtualenv_install_with_resources
  end

  test do
    assert_match "ens_rd2022_aws", shell_output("#{bin}/prowler aws --list-compliance")
    assert_match "rds", shell_output("#{bin}/prowler aws --list-services")

    assert_match "NoCredentialsError[26]: Unable to locate credentials",
      shell_output("#{bin}/prowler aws --quick-inventory 2>&1", 1)

    assert_match "Prowler #{version}", shell_output("#{bin}/prowler -v")
  end
end
