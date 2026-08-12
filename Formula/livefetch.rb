class Livefetch < Formula
  desc "TUI system information tool with live-updating modules"
  homepage "https://github.com/WilGulf/livefetch"
  url  "https://github.com/WilGulf/livefetch/archive/refs/tags/v2.1.5-test.tar.gz"
  sha256 "9adaa7ea3382b0a0064a67220e8a008d55614edfce0856e30df0ce6f272559bd"
  license "MIT"
  head "https://github.com/WilGulf/livefetch.git", branch: "main"

  depends_on "ncurses"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"livefetch", "--version"
  end
end
