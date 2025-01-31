class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "0.0.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/michalrus/bfp-release-testing/releases/download/0.0.1/blockfrost-platform-0.0.1-3652ef1-x86_64-darwin.tar.bz2"
      sha256 "e1dce524e85649d39e86ec97c6c82018d72cc75a354f0ed6965b0f7d4b5a5b77"
    else
      url "https://github.com/michalrus/bfp-release-testing/releases/download/0.0.1/blockfrost-platform-0.0.1-3652ef1-aarch64-darwin.tar.bz2"
      sha256 "0d97dbd6054cbc1da7556323c79df8b03ad6dba45a3ad71fbc637f56bdfb4d46"
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
