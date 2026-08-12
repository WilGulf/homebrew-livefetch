class Livefetch < Formula
  desc "TUI system information tool with live-updating modules"
  homepage "https://github.com/WilGulf/livefetch"
  url "https://github.com/WilGulf/livefetch/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "5c7f09937b5330ca78f45de2f4705d2c2769a744cea787a39240d9b6244728eb"
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
