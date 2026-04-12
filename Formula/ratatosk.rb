class Ratatosk < Formula
  desc "Self-hosted, open-source alternative to ngrok"
  homepage "https://github.com/ragnarok22/ratatosk"
  version "0.0.6"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-darwin-arm64.tar.gz"
      sha256 "1620db4cd9ccb2a0b6f0a1c3d8aa3b43acf28ce36369629c3503ef60f8c51641"
    elsif Hardware::CPU.intel?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-darwin-amd64.tar.gz"
      sha256 "be8771b0d4703f5f7d55c0031677b99661df9e8b2b07b6c7307f5fb3ca77dc61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-linux-arm64.tar.gz"
      sha256 "546f0d69d91f2fb9bdc1ca9e23c906aab0c8fb71db9dc6efca86241d0215ffac"
    elsif Hardware::CPU.intel?
      url "https://github.com/ragnarok22/ratatosk/releases/download/v#{version}/ratatosk-cli-linux-amd64.tar.gz"
      sha256 "872d895ea38ce7d6cc302ab64b77a9dcb79742cec74126d029b72dc886ce9235"
    end
  end

  def install
    bin.install "ratatosk"
  end

  test do
    system "#{bin}/ratatosk", "version"
  end
end
