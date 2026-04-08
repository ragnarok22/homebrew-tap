class Ratatosk < Formula
  desc "A self-hosted, open-source alternative to ngrok"
  homepage "https://github.com/ragnarok22/ratatosk"
  version "0.0.1"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-darwin-arm64.tar.gz"
      sha256 "5a43dcdf0b7d2a8fef68bc030e53387af30bd3533949f7150beeb442056163cf"
    elsif Hardware::CPU.intel?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-darwin-amd64.tar.gz"
      sha256 "ff39b902b1e7765d9d14a82c4f4d1eaa53ce0776448f4f699dec2022b0b3442e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-linux-amd64.tar.gz"
      sha256 "aea394135660138e1833497753f8fe5f62d768bddf12cd285b9cff632cb7e389"
    end
  end

  def install
    bin.install "ratatosk"
  end

  test do
    system "#{bin}/ratatosk", "version"
  end
end
