# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Units < Formula
  desc "Manipulate, compare, and convert any combination of physical quantities. "
  homepage "https://github.com/NeedleInAJayStack/Units"
  license "MIT"
  version "0.1.6"

  on_macos do
    url "https://github.com/NeedleInAJayStack/Units/releases/download/v0.1.6/v0.1.6-macos-latest.tar.gz"
    sha256 "d12811cd67e7132236bf0e20149385d678aa5d228c9a1c1db38a54e40e6ce7dd"

    def install
      bin.install "./unit"
    end
  end

  on_linux do
    url "https://github.com/NeedleInAJayStack/Units/releases/download/v0.1.6/v0.1.6-ubuntu-latest.tar.gz"
    sha256 "332824fe31a411a4a3c7d6b6ce0223fea2599e9335c68d29d95aed68b7ce3c7b"

    def install
      bin.install "./unit"
    end
  end

  test do
    system "#{bin}/unit --help"
  end
end
