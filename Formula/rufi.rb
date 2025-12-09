class Rufi < Formula
  desc "A fast application launcher for macOS"
  homepage "https://github.com/darwin808/rufi"
  url "https://github.com/darwin808/rufi/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "54b596aa754d904344aae937b894c06e521661af9310e274f2122df90391a4c3"
  license "MIT"  # adjust to your actual license

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rufi", shell_output("#{bin}/rufi --help")
  end
end
