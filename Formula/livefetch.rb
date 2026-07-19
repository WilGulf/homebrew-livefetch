class Livefetch < Formula
    desc "A TUI program like fastfetch that actively updates the shown system information."
    homepage "https://github.com/WilGulf/livefetch"
    url "https://github.com/WilGulf/livefetch/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "a54b0eac9032b03f0100965efaebc3a871e31ec6cd39c9c3042737bbc5f6fe09"
    license "MIT"

    depends_on "ncurses"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end

    test do
        system "#{bin}/livefetch", "--version"
    end
end
