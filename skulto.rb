class Skulto < Formula
  desc "Offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.2/skulto-v1.0.2-darwin-amd64.tar.gz"
      sha256 "938340a3101b22ba3d80f6ad4aefa964931af47fb13a10043dc3ad6643199e4d"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.2/skulto-v1.0.2-darwin-arm64.tar.gz"
      sha256 "67c5b636768245c23fcdec3d432276db68fd0d5330de80afa2b3e2da1aed6b26"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.2/skulto-v1.0.2-linux-amd64.tar.gz"
      sha256 "d2c0332d2ecf8c4c876a73a49a77c6291a6d48f5061a090c7fea0843abf6afea"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.2/skulto-v1.0.2-linux-arm64.tar.gz"
      sha256 "b461d73512ef80415b8049d93bd2e5341ae472779f2ab2331fe5fb2fb1113cdf"
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
