class Vars < Formula
  desc "Encrypted store for your environment variables, unlocked by your SSH key"
  homepage "https://github.com/vars-cli/vars"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://github.com/vars-cli/vars/releases/download/v0.11.0/vars_darwin_arm64.tar.gz"
      sha256 "e75c3b5cf254491f0c342b785c4a5fac1e05cd72bbb7abdce2270ff9c25497fb"
    end
    on_intel do
      url "https://github.com/vars-cli/vars/releases/download/v0.11.0/vars_darwin_amd64.tar.gz"
      sha256 "dafdd819c559f217bef7fb1e6c0abe285bf474627316c492c84416ff621f4361"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vars-cli/vars/releases/download/v0.11.0/vars_linux_arm64.tar.gz"
      sha256 "09aa8422e936d77acc0d6db63cf3d8b7dcd862948b28b6411a3c29e805dc3515"
    end
    on_intel do
      url "https://github.com/vars-cli/vars/releases/download/v0.11.0/vars_linux_amd64.tar.gz"
      sha256 "94262b207a825d421a2c95ebda0fe252804641ecc104f342922afeef469a921b"
    end
  end

  def install
    bin.install "vars"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vars --version")
  end
end
