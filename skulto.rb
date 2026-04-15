class Skulto < Formula
  desc "Offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.3.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.3.2/skulto-v1.3.2-darwin-amd64.tar.gz"
      sha256 "b6b8bab8a8a3cef16182bef3f6b8a8fcdc88107450c3a8aab0361c70e2faa95b"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.3.2/skulto-v1.3.2-darwin-arm64.tar.gz"
      sha256 "a260f874146ad6c1f0eb3a0d2f5046999fa470a526544a60697730572979c583"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.3.2/skulto-v1.3.2-linux-amd64.tar.gz"
      sha256 "a3cd2eeaea9e58d25ec0a02270aab7fe27a5f90c45d1f0fd2c97042b4340f94f"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.3.2/skulto-v1.3.2-linux-arm64.tar.gz"
      sha256 "d3cf1fc94dd944c8eb30178415719121f29e593a44c81452928bdbedf867d8f0"
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
