class Livefetch < Formula
    desc "A TUI program like fastfetch that actively updates the shown system information."
    homepage "https://github.com/WilGulf/livefetch"
    url "https://github.com/WilGulf/livefetch/archive/refs/tags/v0.1.1.tar.gz"
    sha256 "7c32a24c0c187b26dd7a5b778574df66b49eff71b931906680c189faec7a0e65"
    license "MIT"

    depends_on "ncurses"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end

    test do
        system "#{bin}/livefetch", "--version"
    end
end