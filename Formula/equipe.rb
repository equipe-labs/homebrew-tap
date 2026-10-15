class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.33.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "f29e9a8dd0cd75f13cc5ed8bd1e00ef937c12bb5c1d73c9378ec9e3b261c49e4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.33.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "1c12bf7e5bc1fda193292e5e02a55a325a0ce76a7d5b1debc1433e97a8db9e44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.33.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c49367a12c3e932e84d6603bd95e1868ec3ddef2c1520e6612ed92ae756ec3a9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.33.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "54af8f5947eb9caf7ae73b2a2d0062198e22b7aa9227dcd63328914d2c324d45"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
