class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "0.0.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.2/blockfrost-platform-0.0.2-e06029b-x86_64-darwin.tar.bz2"
      sha256 "ad6d1f3cffbd0242c21cf8016babce3d834bba4c2340c82ed3dd88fc04ca5800"
    else
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.2/blockfrost-platform-0.0.2-e06029b-aarch64-darwin.tar.bz2"
      sha256 "699c352358132b9a349fe74619fa592ffae9478d792d209d903f319bb5c56c31"
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
