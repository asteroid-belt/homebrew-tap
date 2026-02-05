class Skulto < Formula
  desc "Offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.1.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.4/skulto-v1.1.4-darwin-amd64.tar.gz"
      sha256 "3f12202214e00d1b5fc7945b341ea4c68e2227aa792f4a9d80c7945dbd631a40"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.4/skulto-v1.1.4-darwin-arm64.tar.gz"
      sha256 "85c4b221071e15aa7e4566d8966e411f5fd80b0f2505a1feb969c903686db360"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.4/skulto-v1.1.4-linux-amd64.tar.gz"
      sha256 "b49a041c11c33ceabfec5c5f454cb1c8c31cb1f859e1471fd5a9d9aacb9d13ad"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.4/skulto-v1.1.4-linux-arm64.tar.gz"
      sha256 "25c47e9dac0c4830f0b9d2e80adf42c71115ee05cccc4d8bd083c883167af902"
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
