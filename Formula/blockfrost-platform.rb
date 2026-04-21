class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "1.0.0-rc.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/1.0.0-rc.1/blockfrost-platform-1.0.0-rc.1-3e0d832-x86_64-darwin.tar.bz2"
      sha256 "3cc840d17407c5bcaf73f7804161d10a9303eb3a72c685555404f81333ad893a"
    else
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/1.0.0-rc.1/blockfrost-platform-1.0.0-rc.1-3e0d832-aarch64-darwin.tar.bz2"
      sha256 "5fb4605eac615fab1c5f73c9cebee9e59fa3738a285665a4855e383f1fe34c14"
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
