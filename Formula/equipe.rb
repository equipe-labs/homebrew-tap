class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.171"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.171/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "642f1e0b7433a7253d0eb8c767f5befc37efe68e2eb8704d4b4c3339788a5396"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.171/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "eaf8000a4038f6ba4728e715b23ca4e5b8c7a5d940b5c630df9f73aae356474b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.171/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9ff063786a74380baf87c36b2b77ebeba0c30f3eeb60bdb9f8f722490d95d9db"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.171/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c21b051180b704db3f33adcfcfd7433a655aab463d04be79152fb8682eed69e"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
