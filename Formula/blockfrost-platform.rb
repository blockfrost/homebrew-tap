class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "1.0.0-rc.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/1.0.0-rc.2/blockfrost-platform-1.0.0-rc.2-fb6cbb6-x86_64-darwin.tar.bz2"
      sha256 "e91782da84f8b29c6a86907fa782c510fa84b4be215b9879814fcc605f32c40d"
    else
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/1.0.0-rc.2/blockfrost-platform-1.0.0-rc.2-fb6cbb6-aarch64-darwin.tar.bz2"
      sha256 "85b928fddc15ac9d7f9e1cac11e9adefcb30aa296791ae2d00b9586af5ccf3a7"
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
