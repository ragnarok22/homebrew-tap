class Whereami < Formula
  desc "CLI utility that checks your internet information (IP, country)"
  homepage "https://github.com/ragnarok22/whereami"
  url "https://github.com/ragnarok22/whereami/archive/refs/tags/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "d38a119c3fb6e3569f59522d2e70bdbaa2a01c89de89ca10e5cb4a699bfb67cf"
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
