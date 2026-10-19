class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.74.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.74.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "f6de5167d1d7b89d674414a3046527551d80fc1e03313495445767ac5f6ebb8a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.74.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c9bab946071d8791497d7cea41c7c5aaff8d65abd1bef16c3bbd5e1424ff4575"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.74.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b282b7dd5fbb1e487646adaf199f8b47110bf5b6526ef7e31bdf691458983e4f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.74.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7bf8399db123d8f6c167d29e23d7e28718a943582e99583b7e468efc7d7f1f7"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
