class Skulto < Formula
  desc "Offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.2/skulto-v1.1.2-darwin-amd64.tar.gz"
      sha256 "8a5e7b26c937ed5ae5c22bc81a27bac357ad7219fb774001cebfcb546cfcbd93"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.2/skulto-v1.1.2-darwin-arm64.tar.gz"
      sha256 "c4de72ecca568b4f96beff95d34d5426e9023246b7eabdf566a0c8f3b3c691cf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.2/skulto-v1.1.2-linux-amd64.tar.gz"
      sha256 "6de6492539131b16030781e5c338cf981f9eb94b9196edb23f1cae67f782b86a"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.2/skulto-v1.1.2-linux-arm64.tar.gz"
      sha256 "e507ae52358ba7aa56b910d2ea3c464a5271a1fdad974dc3e7a7b0f7a474282f"
    end
  end

  def install
    %w[skulto skulto-mcp].each do |exe|
      bin.install exe
    end
  end

  test do
    assert_match(/#{version}/, `skulto --version`.chomp)
    assert_match(/#{version}/, `skulto-mcp --version`.chomp)
  end
end
