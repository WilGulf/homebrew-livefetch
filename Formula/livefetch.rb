class Livefetch < Formula
  desc "TUI system information tool with live-updating modules"
  homepage "https://github.com/WilGulf/livefetch"
  url "https://github.com/WilGulf/livefetch/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "e11ad6e32e62ccb93ce0c5af7163874cc6261e74f413b8ef3a00cd49ad6974e8"
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
