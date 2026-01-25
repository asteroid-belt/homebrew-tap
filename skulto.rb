class Skulto < Formula
  desc "Offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.5/skulto-v1.0.5-darwin-amd64.tar.gz"
      sha256 "78c9997911179330d4aefcad3ecabe5e4ef556dadcfdd778bd27560778a12d76"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.5/skulto-v1.0.5-darwin-arm64.tar.gz"
      sha256 "b6bc49cdc6d73169bf02b0b0b0de56525ec90fe9f9a830ae6c94aac67c11bde4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.5/skulto-v1.0.5-linux-amd64.tar.gz"
      sha256 "68190793383ed7d8c154e6d13918ebfbcc01d3b814bdf93481cd3ed33a8bce3c"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.5/skulto-v1.0.5-linux-arm64.tar.gz"
      sha256 "ed7c1d1a08a1c585ebab6d1468d853de8ec52d46e6a4387306d1f1b08eaecf56"
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
