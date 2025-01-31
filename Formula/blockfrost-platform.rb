class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "0.0.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/michalrus/bfp-release-testing/releases/download/0.0.1/0.0.1/blockfrost-platform-0.0.1-215d42c-x86_64-darwin.tar.bz2"
      sha256 "e54f318ab2527b2a8209b412ae76d2d31b1bf61278a4e9fdc88cfee380e91db4"
    else
      url "https://github.com/michalrus/bfp-release-testing/releases/download/0.0.1/blockfrost-platform-0.0.1-215d42c-aarch64-darwin.tar.bz2"
      sha256 "c917045e1e7057ed8e45cfc24829fbcc44706e88f8610f532f89c1e3a79dc8bd"
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
