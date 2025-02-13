class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "0.0.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.1/blockfrost-platform-0.0.1-61ad0bf-x86_64-darwin.tar.bz2"
      sha256 "ab346a2cb7d6e98575711e20b57c9e01f00bf888f383786f4bcb7df99202ee2c"
    else
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.1/blockfrost-platform-0.0.1-61ad0bf-aarch64-darwin.tar.bz2"
      sha256 "7223fb6b1b0d3d40cf1e5625f2655e0269952920f8e21176874a99658d478c4d"
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
