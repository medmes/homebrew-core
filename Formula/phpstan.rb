class Phpstan < Formula
  desc "PHP Static Analysis Tool"
  homepage "https://github.com/phpstan/phpstan"
  url "https://github.com/phpstan/phpstan/releases/download/1.10.17/phpstan.phar"
  sha256 "e7c994296a928d8f06433d47af4d926fecd5a4af1a240e5fc89655cd975835a9"
  license "MIT"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "fd4b2bbc60a0c700926588805b06cde724d28023328760c747b55b37dde92781"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "fd4b2bbc60a0c700926588805b06cde724d28023328760c747b55b37dde92781"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "fd4b2bbc60a0c700926588805b06cde724d28023328760c747b55b37dde92781"
    sha256 cellar: :any_skip_relocation, ventura:        "503f28453a9d9e75b5d2a01eaf38a6df2dfced07835bc4d6b5b0373a442c7270"
    sha256 cellar: :any_skip_relocation, monterey:       "503f28453a9d9e75b5d2a01eaf38a6df2dfced07835bc4d6b5b0373a442c7270"
    sha256 cellar: :any_skip_relocation, big_sur:        "503f28453a9d9e75b5d2a01eaf38a6df2dfced07835bc4d6b5b0373a442c7270"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "fd4b2bbc60a0c700926588805b06cde724d28023328760c747b55b37dde92781"
  end

  depends_on "php" => :test

  # Keg-relocation breaks the formula when it replaces `/usr/local` with a non-default prefix
  on_macos do
    on_intel do
      pour_bottle? only_if: :default_prefix
    end
  end

  def install
    bin.install "phpstan.phar" => "phpstan"
  end

  test do
    (testpath/"src/autoload.php").write <<~EOS
      <?php
      spl_autoload_register(
          function($class) {
              static $classes = null;
              if ($classes === null) {
                  $classes = array(
                      'email' => '/Email.php'
                  );
              }
              $cn = strtolower($class);
              if (isset($classes[$cn])) {
                  require __DIR__ . $classes[$cn];
              }
          },
          true,
          false
      );
    EOS

    (testpath/"src/Email.php").write <<~EOS
      <?php
        declare(strict_types=1);

        final class Email
        {
            private string $email;

            private function __construct(string $email)
            {
                $this->ensureIsValidEmail($email);

                $this->email = $email;
            }

            public static function fromString(string $email): self
            {
                return new self($email);
            }

            public function __toString(): string
            {
                return $this->email;
            }

            private function ensureIsValidEmail(string $email): void
            {
                if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                    throw new InvalidArgumentException(
                        sprintf(
                            '"%s" is not a valid email address',
                            $email
                        )
                    );
                }
            }
        }
    EOS
    assert_match(/^\n \[OK\] No errors/,
      shell_output("#{bin}/phpstan analyse --level max --autoload-file src/autoload.php src/Email.php"))
  end
end
