class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.120"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.120/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "c950ba2e9336ba8bff7c8139aefe7708f8ea2fb02d67155e1bb0808ac54896d5"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.120/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "3f0577e09fb7b98f1324da239693a05dd16b325ebb368d4404dd7ee6e3276e6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.120/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "61ef55062f5a989fc5b390a3a9f828a439b5f870aa79ba4baea0d78021cd1518"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.120/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "041bfe39c6eaf30fe1b405ce3f8406373c055cb6e085fe3c9c1d743d4b65e2a9"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
