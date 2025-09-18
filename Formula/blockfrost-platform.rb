class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "0.0.3-rc.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.3-rc.1/blockfrost-platform-0.0.3-rc.1-21146ca-x86_64-darwin.tar.bz2"
      sha256 "5390464805be55c94c5b5ea619f0037b9714a945c8dcad703ff7546f40c9ccf9"
    else
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.3-rc.1/blockfrost-platform-0.0.3-rc.1-21146ca-aarch64-darwin.tar.bz2"
      sha256 "c52a70989dffecd93a85ffd4bb882f8182090e5cd7fd541824aed97de52bd3d7"
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
