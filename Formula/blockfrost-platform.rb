class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "0.0.3-rc.3"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.3-rc.3/blockfrost-platform-0.0.3-rc.3-e8da785-x86_64-darwin.tar.bz2"
      sha256 "834d257d4a1543b0035f5df1a27720b57dd4ccaf747c141dde13c02e13329d85"
    else
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.3-rc.3/blockfrost-platform-0.0.3-rc.3-e8da785-aarch64-darwin.tar.bz2"
      sha256 "41198b639efe45f10e887199a14c1d09c6473d9608fc379c6a5a3241eff09de2"
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
