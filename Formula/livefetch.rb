class Livefetch < Formula
    desc "A TUI system information tool with live-updating modules."
    homepage "https://github.com/WilGulf/livefetch"
    url "https://github.com/WilGulf/livefetch/archive/refs/tags/v1.0.2.tar.gz"
    sha256 "83b292dbe63ea8bda5a74525f39334b554af9982ea8d92e2be602fb286c414b2"
    license "MIT"

    depends_on "ncurses"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end

    test do
        system "#{bin}/livefetch", "--version"
    end
end
