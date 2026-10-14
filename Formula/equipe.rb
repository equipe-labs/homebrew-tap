class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.17.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "95dde51fd56f8de34bca995d09f21095f86f8c685d64c4e8decf72d39ba78c46"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.17.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d97f89b69764fb0b93ed9b5efa008d51ba8a71ef86b4a68cc7bf8fa4b04cf6dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.17.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d1130f52c7e6cc70e8508694b3883b807237e777fd4485dcdad29a463bfe1c48"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.17.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c976a78217f20de40493407770d9a95988a6e1ac48ea4ec9d85942167c8af5e1"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
