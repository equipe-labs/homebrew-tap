class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.28.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.28.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "2c5b5fca66a30722cd6190906519bcd041fec6090df4dc74eaf524c0f8f20266"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.28.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "e2f249b3aae83390ccf94e3121eb9387706818a44bf27df7c278868827b13a3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.28.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1b4a5a832c4b25dddbfb2de24ee43ce362dfbe590d16b9e724a446290ebcd0ef"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.28.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0f37280afc58d8aaaacbdfc26235083233debff4f0772a7f025a34a9fa0ae50e"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
