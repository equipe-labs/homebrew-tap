class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.69"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.69/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7152608f1af3cfb231d3e6da31198976018851f62afd61e9753282a56cd1481a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.69/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c7a30fd532536fc77e868c4b3f0069e4e9f7bdb01d89477970e4069fc45d08aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.69/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5a14c0afe72b0252ed1bdf4cb959a11c1c2e6c9f1b65bb13061592cff7493929"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.69/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d12e5b7572dd884111dfe75f4f102b701916828e8e7253e495d7d18788ff23c5"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
