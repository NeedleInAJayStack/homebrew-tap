# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Units < Formula
  desc "Manipulate, compare, and convert any combination of physical quantities. "
  homepage "https://github.com/NeedleInAJayStack/Units"
  license "MIT"
  version "1.0.0"

  on_macos do
    url "https://github.com/NeedleInAJayStack/Units/releases/download/v1.0.0/v1.0.0-macos-latest.tar.gz"
    sha256 "4c162a85e39cba2efeec7ea0cbc88b5f30a4b966ddc09a0041cee8546eb45ab9"

    def install
      bin.install "./unit"
    end
  end

  on_linux do
    url "https://github.com/NeedleInAJayStack/Units/releases/download/v1.0.0/v1.0.0-ubuntu-latest.tar.gz"
    sha256 "ae8e57dc4ecf3ee31fea9dc91e505c233dc2709da64a35f6924bed0b72623bd8"

    def install
      bin.install "./unit"
    end
  end

  test do
    system "#{bin}/unit --help"
  end
end
