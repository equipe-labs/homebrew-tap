class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.23.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.3/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "e81f3f6f5d392f24a4a39dfb2b143004654d94fc71464754ebea41f4d573e5b9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.3/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "e183aedd4c2fad5a3bd4a43404d64e6f2c0855f1f3224fc63d338f168e5bc58e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.3/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6167f85a2a4723889a6ea10a323e5124f84a29f1c6b2f672a2afb1c46a956eec"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.3/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a306683ab97625a778dccee582a5987f24838c2b279419e928110bd0188a3f0f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
