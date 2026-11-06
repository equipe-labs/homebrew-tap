class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.58"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.58/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "5ee25e03ed5b0d2ee94bb2d68e90e77ada8866ebcd5acc4c75bbf5e6a04c6e27"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.58/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "98d2a385d9b0930ccac6250d95f28e7cacc0cdc4933aae8528282a288e8cbe75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.58/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed9f738ed13348df83739e2d65d4b763ae3001be08da9a8a8947c424cc25eb66"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.58/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2cc9820392e7e95c7f1ab0bb961eb7ce67d7f3b4ca278728c500c7f6b24f2f20"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
