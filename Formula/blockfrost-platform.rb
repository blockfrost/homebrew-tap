class BlockfrostPlatform < Formula
  desc "Blockfrost platform is a software that services a developer-friendly JSON API for the Cardano ecosystem"
  homepage "https://platform.blockfrost.io/"
  license "Apache-2.0"
  version "0.0.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.1/blockfrost-platform-0.0.1-1a18b53-x86_64-darwin.tar.bz2"
      sha256 "24eda0743dd2ef0fe528aa11dfd79a578879bb1229966051b93a4baa484a8f7c"
    else
      url "https://github.com/blockfrost/blockfrost-platform/releases/download/0.0.1/blockfrost-platform-0.0.1-1a18b53-aarch64-darwin.tar.bz2"
      sha256 "c07d23d42e71aecb3028a0b34b611fc6201e59ce2c54113eca0ec7525e779735"
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
