class Rufi < Formula
    desc "A fast application launcher for macOS"
    homepage "https://github.com/darwin808/rufi"
    url "https://github.com/darwin808/rufi/releases/download/v0.3.0/rufi-macos.tar.gz"
    sha256 "4838f8917e1908edb9e55e8bab630bea60cbf8cad678d3c0fd75b5ac2d482a19"
    license "MIT"

    depends_on :macos

    def install
      bin.install "rufi"
    end

    test do
      assert_match "rufi", shell_output("#{bin}/rufi --help")
    end
  end
