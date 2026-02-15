class Skulto < Formula
  desc "Offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.2.0/skulto-v1.2.0-darwin-amd64.tar.gz"
      sha256 "010e426341a66ba4d1617b2c8bd469f305ad29725aece496eaf36e41532ce33d"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.2.0/skulto-v1.2.0-darwin-arm64.tar.gz"
      sha256 "343104236d2a1d178fa5cc549faa9163cfe6a398aa4d8edc60d26d8b3f3fc07b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.2.0/skulto-v1.2.0-linux-amd64.tar.gz"
      sha256 "446c7d6a29a83bffc25e16f8603422d346e4bcc3e1f5a4bd1aefebc7da3aa77d"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.2.0/skulto-v1.2.0-linux-arm64.tar.gz"
      sha256 "7e8bdc6d5b0051cba5bda16df451c79808cef64d124bedc464825644626ed228"
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
