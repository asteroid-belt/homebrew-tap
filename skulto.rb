class Skulto < Formula
  desc "Offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.1/skulto-v1.0.1-darwin-amd64.tar.gz"
      sha256 "d5b168012e77926bb93b037c6c9c140660fcfb0c1f5dfc5543217b931f21b112"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.1/skulto-v1.0.1-darwin-arm64.tar.gz"
      sha256 "9521a4fa02b4ae0fa517be33e219501033a27e6b0cbb7bfe497cf44c566c4a86"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.1/skulto-v1.0.1-linux-amd64.tar.gz"
      sha256 "20db2a088d155601060c26d0f16d03757f61a8c2e0cbdc8bcc856208d6055901"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.1/skulto-v1.0.1-linux-arm64.tar.gz"
      sha256 "005144034d6addbc0ed525ca370d2a33ce4c67b22088e90616cc0a1c62d9b05b"
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
