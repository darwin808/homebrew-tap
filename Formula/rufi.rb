class Rufi < Formula
    desc "A fast application launcher for macOS"
    homepage "https://github.com/darwin808/rufi"
    url "https://github.com/darwin808/rufi/releases/download/v0.4.0/rufi-macos.tar.gz"
    sha256 "a30b53afe298b5e64eb2f52ff0963204f80f1b31db7046997c5de0cbfc56e5e5"
    license "MIT"

    depends_on :macos

    def install
      bin.install "rufi"
    end

    test do
      assert_match "rufi", shell_output("#{bin}/rufi --help")
    end
  end
