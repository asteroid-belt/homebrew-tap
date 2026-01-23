class Skulto < Formula
  desc "an offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.0/skulto-v1.0.0-darwin-amd64.tar.gz"
      sha256 "da575214e37e9134715f6b3edee3229114d68cdd42bcbe038b0e60e76678aa7e"
    elsif Hardware::CPU.arm?
        url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.0/skulto-v1.0.0-darwin-arm64.tar.gz"
      sha256 "9ffc07c8016d17938a03f76c65bb18fca49b30624eae7443e0c226481463b952"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.0/skulto-v1.0.0-linux-amd64.tar.gz"
      sha256 "0876560700c981660f6683cb560b73b704b1e2bcd899476c86063079682812df"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.0/skulto-v1.0.0-linux-arm64.tar.gz"
      sha256 "0dea6cfece0b7c7a7dbe805e490a98021455d285d0522cb2c9e0aa339ac6406d"
    end
  end

  def install
    %w[skulto].each do |exe|
      bin.install exe
    end
  end

  test do
    assert_match /#{version.to_s}/, `skulto --version`.chomp
  end
end