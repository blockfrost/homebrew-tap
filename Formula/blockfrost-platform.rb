class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "0.0.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "http://127.0.0.1:12345/blockfrost-platform-0.0.1-8eea20c-x86_64-darwin.tar.bz2"
      sha256 "74146fa6bffe375291355a888ce8305b13bce252a06c5cbb5accb7aa64cb60fc"
    else
      url "http://127.0.0.1:12345/blockfrost-platform-0.0.1-8eea20c-aarch64-darwin.tar.bz2"
      sha256 "11cd0690705ca14c294520b81504af1ca66cd0a0eb522455a57479011efc4a63"
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
