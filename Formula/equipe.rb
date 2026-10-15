class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.41.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "b8d12549ca0e62e06a2e01bd2725a09593b9fe266b78fb197b93ffc9223b254e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.41.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "49f33efebd3fb1bba22d3390beba6c0b84605be1c876909f2abe9e5f804938c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.41.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5324acf854043e40e35938ea58a0f7ac06c41cd20a02d2ea25d8ff55843cdd50"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.41.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ab39f1ca53ce84fe2eb768a4c4f395425379337697998f57ad095a5168916cb5"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
