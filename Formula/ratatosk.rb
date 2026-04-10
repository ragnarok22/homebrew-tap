class Ratatosk < Formula
  desc "Self-hosted, open-source alternative to ngrok"
  homepage "https://github.com/ragnarok22/ratatosk"
  version "0.0.4"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-darwin-arm64.tar.gz"
      sha256 "bbf08bff9577d50036018fb51d2186d0dceba074da0942b99f05739fdc3a6ea9"
    elsif Hardware::CPU.intel?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-darwin-amd64.tar.gz"
      sha256 "025ae822e288cc9b756f21258ee282b98d7c54e2ac2188e5ed337ef6bd2751b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-linux-arm64.tar.gz"
      sha256 "8bf6ad7ba27098517e80c00527e9176568a0dc6195bbcf6fd6acadebe291f637"
    elsif Hardware::CPU.intel?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-linux-amd64.tar.gz"
      sha256 "b10bcbac32fdffba0677d08ac59b1a1ad57a63171c682c58fa75a8ab3b30c011"
    end
  end

  def install
    bin.install "ratatosk"
  end

  test do
    system "#{bin}/ratatosk", "version"
  end
end
