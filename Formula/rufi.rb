class Rufi < Formula
  desc "A fast application launcher for macOS"
  homepage "https://github.com/darwin808/rufi"
  url "https://github.com/darwin808/rufi/releases/download/v0.5.0/rufi-macos.tar.gz"
  sha256 "2a60623119c7e29ce397c9964c5d12cd901065af4793b38cd425d5a331539793"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rufi"
  end

  test do
    assert_match "rufi", shell_output("#{bin}/rufi --help 2>&1", 1)
  end
end
