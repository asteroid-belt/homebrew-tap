class Skulto < Formula
  desc "Offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.1/skulto-v1.1.1-darwin-amd64.tar.gz"
      sha256 "8396e6ba29279dd86a18515d48e742ea4d9ade6d7f4488efd1c79523d7a4db98"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.1/skulto-v1.1.1-darwin-arm64.tar.gz"
      sha256 "e8aedf8863f1cac95b4e8573ab014fc33cf71bb729d52ec08f1e6a686cf90bf5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.1/skulto-v1.1.1-linux-amd64.tar.gz"
      sha256 "4e0a9587d1d03f78e0c2d30699ad8edc7d262483f7e0acad41ef9b9a970d1edc"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.1.1/skulto-v1.1.1-linux-arm64.tar.gz"
      sha256 "4697c37f7fb6e70959593dd1a60c6e293c2f1e9b2d4ee5a49b8af1209342df06"
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
