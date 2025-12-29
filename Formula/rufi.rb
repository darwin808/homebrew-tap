class Rufi < Formula
    desc "A fast application launcher for macOS"
    homepage "https://github.com/darwin808/rufi"
    url "https://github.com/darwin808/rufi/releases/download/v0.2.0/rufi-macos.tar.gz"
    sha256 "8ed6b15bd127d9dba1b5e5cdec805d70ca212571dfaff5c56a2ab24caedfede7"
    license "MIT"

    depends_on :macos

    def install
      bin.install "rufi"
    end
  end
