class Skulto < Formula
  desc "Offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.3/skulto-v1.0.3-darwin-amd64.tar.gz"
      sha256 "a76f803fd950a70fb8982a56ab2cbf8d0624ede55cdba1d1bf926416f0317eff"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.3/skulto-v1.0.3-darwin-arm64.tar.gz"
      sha256 "3e9c6c6fc8d4cf31b9474dfec6e4f724a3c6ea0dd9d0152663f11fc9750e92c9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.3/skulto-v1.0.3-linux-amd64.tar.gz"
      sha256 "ccd8d60e590b83f6b2518a9cdfab04c8f6761f985fd011b06ee426f45f14458c"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.3/skulto-v1.0.3-linux-arm64.tar.gz"
      sha256 "f3ffcf7c8e69210e9d32eae074ac78e81eec07533758249009c2bd553e27c109"
    end
  end

  def install
    %w[skulto].each do |exe|
      bin.install exe
    end
  end

  test do
    assert_match(/#{version}/, `skulto --version`.chomp)
  end
end
