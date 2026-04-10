class Whereami < Formula
  desc "CLI utility that checks your internet information (IP, country)"
  homepage "https://github.com/ragnarok22/whereami"
  version "0.1"
  license "GPL-3.0"
  url "https://github.com/ragnarok22/whereami/archive/446fb94f4d5eb9672101d13807167317c7633916.tar.gz"
  sha256 "30c57c73022f71b40aee2ecac1fa3fed57d04294ff0e0563d47898f99d85035e"

  head "https://github.com/ragnarok22/whereami.git", branch: "main"

  depends_on "jq"

  def install
    bin.install "whereami"
  end

  test do
    assert_match "whereami", shell_output("#{bin}/whereami --help")
  end
end
