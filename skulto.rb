class Skulto < Formula
  desc "Offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.3.0/skulto-v1.3.0-darwin-amd64.tar.gz"
      sha256 "5ce119eedaa8012bf92e380e7b6cbe1917e518c46e60ef853f6ae455a94fec1b"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.3.0/skulto-v1.3.0-darwin-arm64.tar.gz"
      sha256 "2990f737e6735863b55b53f544ce83784d70f60ccacbdd1ccf2db5ff07aac119"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.3.0/skulto-v1.3.0-linux-amd64.tar.gz"
      sha256 "0eef887731e6e2bbe52bbca72b55c852a9bdbe1e98ee55f96326d92de8aab65a"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.3.0/skulto-v1.3.0-linux-arm64.tar.gz"
      sha256 "ed5b24ca438a81b3cdc71c0582e0d30c6a8a228fcc766e352205646002f29ce4"
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
