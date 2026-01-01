class Rufi < Formula
  desc "A fast application launcher for macOS"
  homepage "https://github.com/darwin808/rufi"
  url "https://github.com/darwin808/rufi/releases/download/v0.6.0/rufi-macos.tar.gz"
  sha256 "0a85d407b518baba08e0ee44b11254526a224a54da4e5abd7ed38e0ecb52c904"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rufi"
  end

  test do
    assert_match "rufi", shell_output("#{bin}/rufi --help 2>&1", 1)
  end
end
