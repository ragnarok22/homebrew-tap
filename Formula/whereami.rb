class Whereami < Formula
  desc "CLI utility that checks your internet information (IP, country)"
  homepage "https://github.com/ragnarok22/whereami"
  url "https://github.com/ragnarok22/whereami/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "6150f4738705008dc9b03b8661c3288f967e8caea9fb4fa70796deac41ed260c"
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
