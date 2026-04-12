class Ratatosk < Formula
  desc "Self-hosted, open-source alternative to ngrok"
  homepage "https://github.com/ragnarok22/ratatosk"
  version "0.0.5"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-darwin-arm64.tar.gz"
      sha256 "aa8c6b0b8205f15dacabcfbd2395e7f296301b099d972ba2e7771003bc83347a"
    elsif Hardware::CPU.intel?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-darwin-amd64.tar.gz"
      sha256 "b8be96640f31dc23c4edd9f5cbe6c0e572557aad0f030aefa1dc23d240d761d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-linux-arm64.tar.gz"
      sha256 "5b6c148bc33d06adc5ddf6a86e7926a7693dc63e56cf7a5463401efbef8784aa"
    elsif Hardware::CPU.intel?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-linux-amd64.tar.gz"
      sha256 "24ce0e129a032ce0b04fba9ab2e297d65b2f46bb816863b224e5e9c71a9ef799"
    end
  end

  def install
    bin.install "ratatosk"
  end

  test do
    system "#{bin}/ratatosk", "version"
  end
end
