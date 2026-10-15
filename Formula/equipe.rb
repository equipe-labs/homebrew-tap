class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.39.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "24b870d2620d9043b76e39a9968de0a42cff0b4806f1d2ff5b1e01c6107756db"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.39.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "abf7b44b2ec00edc6d14464e7b0464fe1d7d7c2fa37b6fcaee8c3d409046575a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.39.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a3fd945b02521ae4a828604d59816aab9881482411c533c1508a8af0723aef57"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.39.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e4ee3d5a8afc722733c16cf30761e1110313a17727bf08183b5de0acd0e9859a"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
