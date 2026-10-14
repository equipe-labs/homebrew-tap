class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.22.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "b1a5c77c18a32ae58b1126f726b811677d9af2467b5db9c2055e4842ca0db1c4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.22.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "7195cc1dd34bb1710a73b41a4f7b00404a74a992c09a647556005e7638f39a86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.22.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "686c37da5eeefdb246eb4bb9016d80b10755da759d6e5d0ea884bb097c58d4d3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.22.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "45701f7fbe542fbd56eba195827a879269bdabc372831a006e520d46c85d30e0"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
