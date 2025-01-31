class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "0.0.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/michalrus/bfp-release-testing/releases/download/0.0.1/blockfrost-platform-0.0.1-963cad7-x86_64-darwin.tar.bz2"
      sha256 "567f7d2f1050e8199627940fa2bb2be88576991ee08a81935d7d143d472b69d4"
    else
      url "https://github.com/michalrus/bfp-release-testing/releases/download/0.0.1/blockfrost-platform-0.0.1-963cad7-aarch64-darwin.tar.bz2"
      sha256 "48694536501f118309b2cadd95389c98edee406501bd7516f69342f77860a2ff"
    end
  end

  def install
    bin.install Dir["bin/*"]
    libexec.install Dir["libexec/*"]
  end

  test do
    system "#{bin}/blockfrost-platform", "--version"
  end
end
