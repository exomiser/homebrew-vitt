class Vitt < Formula
  desc "A moderately small and fast variant annotation utility"
  homepage "https://github.com/exomiser/vitt"
  url "https://github.com/exomiser/vitt/releases/download/v0.1.0/vitt-cli-0.1.0.jar"
  sha256 "..." # Get with: shasum -a 256 vitt-cli-0.1.0.jar
  version "0.1.0"

  depends_on "openjdk"

  def install
    libexec.install "vitt-cli-0.1.0.jar"
    bin.write_jar_script libexec/"vitt-cli-0.1.0.jar", "vitt"
  end

  test do
    system "#{bin}/vitt", "--version"
  end
end
