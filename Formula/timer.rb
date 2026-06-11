class Timer < Formula
  desc "Terminal countdown timer with a large seven-segment display"
  homepage "https://github.com/ragnarok22/timer-go"
  url "https://github.com/ragnarok22/timer-go/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d5499557be8f5a6d9330ca613d0fb3f550747fbd5df0c31fc8a67c21a3e9996c"
  license :cannot_represent

  head "https://github.com/ragnarok22/timer-go.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-o", bin/"timer", "."
  end

  test do
    assert_match "Usage: timer", shell_output("#{bin}/timer --help")
  end
end
