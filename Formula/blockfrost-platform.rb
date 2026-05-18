class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "1.0.0"

  depends_on arch: :arm64

  url "https://github.com/blockfrost/blockfrost-platform/releases/download/1.0.0/blockfrost-platform-1.0.0-1134f1a-aarch64-darwin.tar.bz2"
  sha256 "a865d21b034d73a265391c45623fb9f25d4a5d70c7bcbb30e870a8bdac0ff25c"

  def install
    bin.install Dir["bin/*"]
    libexec.install Dir["libexec/*"]
  end

  test do
    system "#{bin}/blockfrost-platform", "--version"
  end
end
