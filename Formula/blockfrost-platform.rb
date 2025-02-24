class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "0.0.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.1/blockfrost-platform-0.0.1-e5b85fd-x86_64-darwin.tar.bz2"
      sha256 "d1dad2c70933a03342df9a92150be9c448f8b6c770ddde1381c68690e2f00d94"
    else
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.1/blockfrost-platform-0.0.1-e5b85fd-aarch64-darwin.tar.bz2"
      sha256 "16a0317df3bb51d55708c5084bb8a335db99486d24061bd33611f3f24573377b"
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
