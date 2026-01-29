class Skulto < Formula
  desc "Offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.1.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.3/skulto-v1.1.3-darwin-amd64.tar.gz"
      sha256 "7a013ad7547ce62d29f6b324f149520ed9cd261c008d86e450c9f0750c98d6a2"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.3/skulto-v1.1.3-darwin-arm64.tar.gz"
      sha256 "c69f32048f455939f92a00ca4327a07b5ca640b6f1c85de79104fa8c0e7a5165"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.3/skulto-v1.1.3-linux-amd64.tar.gz"
      sha256 "9c25ac970251d441054e4c17b032bb62d205e48c10886c5c6096795d6083cb5e"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.3/skulto-v1.1.3-linux-arm64.tar.gz"
      sha256 "ee4ceae128f838ae1eed7d1af3b440cbee57eb1cc0fb0e5d6bd6583a03911e2c"
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
