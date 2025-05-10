class Unit < Formula
  desc "Manipulate, compare, and convert any combination of physical quantities."
  homepage "https://github.com/NeedleInAJayStack/Units"
  url "git@gitlab.com:NeedleInAJayStack/Units.git",
      using:    :git,
      tag:      "v0.1.4",
      revision: "bc4481bd9f9b35e7e1060310c7cfe1a3714f9003"

  depends_on "bash"

  def install
  inreplace "pl-swiftlint.sh", /^PL_SWIFTLINT_CONFIG=.*$/, "PL_SWIFTLINT_CONFIG=#{pkgshare}/pl-default-swiftlint.yml"
    bin.install "pl-swiftlint.sh" => "pl-swiftlint"
    pkgshare.install "pl-default-swiftlint.yml"
  end

  test do
    system "#{bin}/pl-swiftlint", "--help"
  end
end
