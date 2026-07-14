class Livefetch < Formula
    desc "A TUI program like fastfetch that actively updates the shown system information."
    homepage "https://github.com/WilGulf/livefetch"
    url "https://github.com/WilGulf/livefetch/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "f23da85daa4c25058dddf192e703ef1b56d5306402b511932873d3e8f0a366d7"
    license "MIT"

    depends_on "ncurses"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end

    test do
        system "#{bin}/livefetch", "--version"
    end
end