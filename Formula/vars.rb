class Vars < Formula
  desc "Encrypted store for your environment variables, unlocked by your SSH key"
  homepage "https://github.com/vars-cli/vars"
  version "0.12.0"

  on_macos do
    on_arm do
      url "https://github.com/vars-cli/vars/releases/download/v0.12.0/vars_darwin_arm64.tar.gz"
      sha256 "f50745fc3b7e247c67fc3143d064ab34641dd48c2f8dc559ac7197e33feb2d54"
    end
    on_intel do
      url "https://github.com/vars-cli/vars/releases/download/v0.12.0/vars_darwin_amd64.tar.gz"
      sha256 "f733e9db0ddd9a58d66807e807d7a58a06fe451ec635b7ac92f6614cec9183e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vars-cli/vars/releases/download/v0.12.0/vars_linux_arm64.tar.gz"
      sha256 "a6a50f06919a31ebe993ef9b4b5e3bb447a7f78bd108258184c0457c315e3105"
    end
    on_intel do
      url "https://github.com/vars-cli/vars/releases/download/v0.12.0/vars_linux_amd64.tar.gz"
      sha256 "c25d20189af28f68818d08ab121349b09ab6e6825b508086b0fe88787addd510"
    end
  end

  def install
    bin.install "vars"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vars --version")
  end
end
