class Rufi < Formula
    desc "A fast application launcher for macOS"
    homepage "https://github.com/darwin808/rufi"
    url "https://github.com/darwin808/rufi/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "8ed6b15bd127d9dba1b5e5cdec805d70ca212571dfaff5c56a2ab24caedfede7"  
    license "MIT"

    depends_on "rust" => :build
    depends_on :macos

    def install
      system "cargo", "install", *std_cargo_args
    end

    test do
      assert_match "rufi", shell_output("#{bin}/rufi --help")
    end
  end
