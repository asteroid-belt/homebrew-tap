class Skulto < Formula
  desc "Offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.4/skulto-v1.0.4-darwin-amd64.tar.gz"
      sha256 "86260c90717e05907d2ca45772b870626e06309e69afbf977f1beeb834a7d01e"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.4/skulto-v1.0.4-darwin-arm64.tar.gz"
      sha256 "8d37db593e2b32b17755b6223aeee0511ff819f997316304c7538d5df8a92956"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.4/skulto-v1.0.4-linux-amd64.tar.gz"
      sha256 "eddd7c454f5b757d71146a67176ce7ed83d086bfeff1187b9b97507f9b505c85"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.0.4/skulto-v1.0.4-linux-arm64.tar.gz"
      sha256 "bb6961b46b96993d49d876fee8160c78cbbe802755685c909cf3f86e03af4baa"
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
