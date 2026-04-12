class Skulto < Formula
  desc "Offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.3.1/skulto-v1.3.1-darwin-amd64.tar.gz"
      sha256 "ec37cc5e46e0303013b33dc5046642b33598b6399ab439eb67a7fd1df38a6c22"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.3.1/skulto-v1.3.1-darwin-arm64.tar.gz"
      sha256 "913df7cf358a3bd55f180ceea6f34f6a760726d2f804ead486797d6ec1668cbe"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.3.1/skulto-v1.3.1-linux-amd64.tar.gz"
      sha256 "03d22821352a9447608f0d0470cbffad4f20e4d062defb1ae8c8cc4d9e9c167b"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.3.1/skulto-v1.3.1-linux-arm64.tar.gz"
      sha256 "d1faf4d0b2aaccb735329d06a27ad446e8fadcfcee8bc484c762261021603a7a"
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
