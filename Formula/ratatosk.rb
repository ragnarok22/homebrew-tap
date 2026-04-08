class Ratatosk < Formula
  desc "A self-hosted, open-source alternative to ngrok"
  homepage "https://github.com/ragnarok22/ratatosk"
  version "0.0.3"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-darwin-arm64.tar.gz"
      sha256 "6b30e5c62eaba4f63bc179428e0417a3d9c373608350544abd6e75d815d7573b"
    elsif Hardware::CPU.intel?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-darwin-amd64.tar.gz"
      sha256 "8c55dc0ab8cffbdc12d05208d4fb110a67082d449b970ed82356c7e65dde09f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-linux-arm64.tar.gz"
      sha256 "59903247db988067dc85fd55a2f7344ba83ceb3cdc9d4105689f27fab096f6b7"
    elsif Hardware::CPU.intel?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-linux-amd64.tar.gz"
      sha256 "d9741113c35df6ee098cd71b80b3d87003c35a498ff48a3db0878b7d3f7690a7"
    end
  end

  def install
    bin.install "ratatosk"
  end

  test do
    system "#{bin}/ratatosk", "version"
  end
end
