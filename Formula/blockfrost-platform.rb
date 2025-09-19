class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "0.0.3-rc.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.3-rc.2/blockfrost-platform-0.0.3-rc.2-47d132e-x86_64-darwin.tar.bz2"
      sha256 "53d9d78710efb92e28f1fbff8677185874bd8771d7b8d36b0671e524862aa9b4"
    else
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.3-rc.2/blockfrost-platform-0.0.3-rc.2-47d132e-aarch64-darwin.tar.bz2"
      sha256 "8c597049cfb675eb6505d461c38f22d3da4181097b47d3bd79fceb2e6118ba93"
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
