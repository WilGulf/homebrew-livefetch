class Livefetch < Formula
    desc "A TUI system information tool with live-updating modules."
    homepage "https://github.com/WilGulf/livefetch"
    url "https://github.com/WilGulf/livefetch/archive/refs/tags/v1.1.0.tar.gz"
    sha256 "26805fc33b482d88314037c90cb7812ae2a53e9f24cb345ea19908abf9040f72"
    license "MIT"

    depends_on "ncurses"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end

    test do
        system "#{bin}/livefetch", "--version"
    end
end
