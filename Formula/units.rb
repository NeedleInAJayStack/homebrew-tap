# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Units < Formula
  desc "Manipulate, compare, and convert any combination of physical quantities. "
  homepage "https://github.com/NeedleInAJayStack/Units"
  license "MIT"
  version "1.1.0"

  on_macos do
    url "https://github.com/NeedleInAJayStack/Units/releases/download/v1.1.0/v1.1.0-macos-latest.tar.gz"
    sha256 "3de2d49e07e503f12c62c7549345f7e609a4ccf692fb6ddb6e42473084b9e282"

    def install
      bin.install "./unit"
    end
  end

  on_linux do
    url "https://github.com/NeedleInAJayStack/Units/releases/download/v1.1.0/v1.1.0-ubuntu-latest.tar.gz"
    sha256 "f26de733a3e48fef62d50bb084f3072b031a4d4896805ebcbb4e0f8e319d7cf2"

    def install
      bin.install "./unit"
    end
  end

  test do
    system "#{bin}/unit --help"
  end
end
