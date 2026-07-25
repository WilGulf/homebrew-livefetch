class Livefetch < Formula
    desc "A TUI system information tool with live-updating modules."
    homepage "https://github.com/WilGulf/livefetch"
    url "https://github.com/WilGulf/livefetch/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "d565dc8e5c643e16d351a1a17e7b1b675e0ed031ed13d34cb6472bd145459476"
    license "MIT"

    depends_on "ncurses"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end

    test do
        system "#{bin}/livefetch", "--version"
    end
end
