class Whereami < Formula
  desc "CLI utility that checks your internet information (IP, country)"
  homepage "https://github.com/ragnarok22/whereami"
  url "https://github.com/ragnarok22/whereami/archive/refs/tags/v0.0.1.tar.gz"
  version "0.0.1"
  sha256 "1d45d548bca56cfb2e1e5a4f02384e9a83add880665ed6d5351bba9d90d0c218"
  license "GPL-3.0"

  head "https://github.com/ragnarok22/whereami.git", branch: "main"

  depends_on "jq"

  def install
    bin.install "whereami"
  end

  test do
    assert_match "whereami", shell_output("#{bin}/whereami --help")
  end
end
