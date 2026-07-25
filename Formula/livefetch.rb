class Livefetch < Formula
    desc "A TUI program like fastfetch that actively updates the shown system information."
    homepage "https://github.com/WilGulf/livefetch"
    url "https://github.com/WilGulf/livefetch/archive/refs/tags/v0.3.0.tar.gz"
    sha256 "6b64364bb80b21f8ad1b3fed7ff31472467e9859543038c8dff5b83f39564b34"
    license "MIT"

    depends_on "ncurses"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end

    test do
        system "#{bin}/livefetch", "--version"
    end
end
