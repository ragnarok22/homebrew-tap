class Ratatosk < Formula
  desc "A self-hosted, open-source alternative to ngrok"
  homepage "https://github.com/ragnarok22/ratatosk"
  version "0.0.2"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-darwin-arm64.tar.gz"
      sha256 "dcb32b0e0071fd1ee477229f180a80099c0ea4a23ca0653a0021a9c87a7c07e3"
    elsif Hardware::CPU.intel?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-darwin-amd64.tar.gz"
      sha256 "83f90cb680d5c19822cfb67cf22ad5abb44f375a25a15121fce43729173bed8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-linux-arm64.tar.gz"
      sha256 "2dbd27fa9958343289845a5dca3e53cddd633b0970f38dd0e6302b1c8cfa0bf9"
    elsif Hardware::CPU.intel?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-linux-amd64.tar.gz"
      sha256 "213ac9e3abfdef86634f3a26c5aa4ae0e214bd49c19bee98d362eff9f3d54d28"
    end
  end

  def install
    bin.install "ratatosk"
  end

  test do
    system "#{bin}/ratatosk", "version"
  end
end
