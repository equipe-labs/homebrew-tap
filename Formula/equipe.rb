class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.86.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.3/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "340678cc6c38c72bf86ccf78df771000017f7e3888c9903701a2960081f0ac6c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.3/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "0d0cb9f6b30703dd52e8ccb36053ed60cf4520b81a1041091f82bfa92cbc75a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.3/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2acd296c5eae4c4d4d2f63d1948eff83bbd620a337153446269c4bdc36e9affa"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.3/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "abb6d0bffbe31a4917df0593cebfe6459c3a68075ba56155f48f3cb97a3bf749"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
