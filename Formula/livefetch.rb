class Livefetch < Formula
  desc "TUI system information tool with live-updating modules"
  homepage "https://github.com/WilGulf/livefetch"
  url "https://github.com/WilGulf/livefetch/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "91607f9b904085c837f8bcf6a3901f22e8ceda0f44e7970761e9ba1d640a4b87"
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
