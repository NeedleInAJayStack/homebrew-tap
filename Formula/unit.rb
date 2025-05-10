# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Units < Formula
  desc "Manipulate, compare, and convert any combination of physical quantities. "
  homepage "https://github.com/NeedleInAJayStack/Units"
  license "MIT"
  version "0.1.5"

  on_macos do
    url "https://github.com/NeedleInAJayStack/Units/releases/download/untagged-750138ff46e97ab71f60/v0.1.5-macos-latest.tar.gz"
    sha256 "0c72165d849c8cfa43e6ea41e27d8b52dc3db4fb3e5533b275ff7076619822ca"

    def install
      bin.install "./unit"
    end
  end

  on_linux do
    url "https://github.com/NeedleInAJayStack/Units/releases/download/untagged-750138ff46e97ab71f60/v0.1.5-ubuntu-latest.tar.gz"
    sha256 "efb1b32e5b6fc1e6082fb892aa0acc549aeaccc72dc73d7aa6c61b7bebccf9a3"

    def install
      bin.install "./unit"
    end
  end

  test do
    system "#{bin}/unit --help"
  end
end
