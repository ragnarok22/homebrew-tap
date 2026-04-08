class Ratatosk < Formula
  desc "A self-hosted, open-source alternative to ngrok"
  homepage "https://github.com/ragnarok22/ratatosk"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-darwin-arm64.tar.gz"
      sha256 "SHA256_PLACEHOLDER_DARWIN_ARM64"
    elsif Hardware::CPU.intel?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-darwin-amd64.tar.gz"
      sha256 "SHA256_PLACEHOLDER_DARWIN_AMD64"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-linux-arm64.tar.gz"
      sha256 "SHA256_PLACEHOLDER_LINUX_ARM64"
    elsif Hardware::CPU.intel?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-linux-amd64.tar.gz"
      sha256 "SHA256_PLACEHOLDER_LINUX_AMD64"
    end
  end

  def install
    bin.install "ratatosk"
  end

  test do
    system "#{bin}/ratatosk", "version"
  end
end
