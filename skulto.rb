class Skulto < Formula
  desc "Offline-first tool for syncing and managing agent skills"
  homepage "https://github.com/asteroid-belt/skulto"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.4.0/skulto-v1.4.0-darwin-amd64.tar.gz"
      sha256 "13d81b44d68ed630cb2991053dbea30eef42e994596ef611da5e681246a4db55"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.4.0/skulto-v1.4.0-darwin-arm64.tar.gz"
      sha256 "4e0595c6fb7a7b5184dd1c8838e3cd66993b38bab7cbfb9d9366ea36b7a0249c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.4.0/skulto-v1.4.0-linux-amd64.tar.gz"
      sha256 "8839507e2773ba0d67ffe28750bd1883a3a14f267d45e4c21df2ee368c197d1d"
    elsif Hardware::CPU.arm?
      url "https://github.com/asteroid-belt/skulto/releases/download/v1.4.0/skulto-v1.4.0-linux-arm64.tar.gz"
      sha256 "406b839af0c59c6471aa06a923f639d5cbea27d0fb6f2ab0916ab60760845bc7"
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
