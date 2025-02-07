class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "0.0.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.1/blockfrost-platform-0.0.1-1363106-x86_64-darwin.tar.bz2"
      sha256 "016b07c5fe0f503208f3e6654287e69ec5d0e998d28eb91ddfde313f0e2720e2"
    else
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.1/blockfrost-platform-0.0.1-1363106-aarch64-darwin.tar.bz2"
      sha256 "31e9dd8cf4c7f514dfdea178d24ef9451c58b17c90eb1da91de19fd21b1408bf"
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
