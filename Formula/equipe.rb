class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.6.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "e1f6b5fbf4510e5227d52baed4a1cfb882ea2d4d2ec1bd4ec16ec1e29edb6b56"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.6.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "e737379abf8b9d9bb5b261f4f42eca55aa6ab9bf3992f334990440a09bafe486"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.6.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1ec4aab495e09c4ef5482209bed55ca379d3800876d05a891308b85095258cd7"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.6.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "834e9e2e41cd31e5ebc9b07a128b0b98c9ded548321dddfcf04217a3d41b40a9"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
