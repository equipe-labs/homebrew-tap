class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.88"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.88/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "0d07db953f319f825ae7fef25bb51df18e29a820900ba2bf1021a749077e30ca"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.88/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "8731c7f5cad6d1aa3d781961b1ace58a0a9262dbf23baaeb34bc8a88744168a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.88/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ddb7735676469ed0c3d01eff5a232c292662694d022c78327a17b80442bc1a37"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.88/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f97ee1a18e7d1f62f341d083f08d23c3eed571083b8572f3e026f8fe4fce1fdd"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
