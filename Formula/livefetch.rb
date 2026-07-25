class Livefetch < Formula
    desc "A TUI program like fastfetch that actively updates the shown system information."
    homepage "https://github.com/WilGulf/livefetch"
    url "https://github.com/WilGulf/livefetch/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "f155617165f57486e7f0a03a428296e32b9e93277d4cdd302c8d238a5bd89707"
    license "MIT"

    depends_on "ncurses"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end

    test do
        system "#{bin}/livefetch", "--version"
    end
end
