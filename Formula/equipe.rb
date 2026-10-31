class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.92.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.92.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "30651f7ed9973ca0ec8ec6a2b868fa364dcfebee68907d3de2e1bcb58125fbff"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.92.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "85130e53608a395e8a215e8825871791865c9ca2faeb556462ba5ce706d81e0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.92.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2d8fe15af82cd816909547caa12e567b876435f8f60643097aa6d98659e7de8a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.92.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf5a51c846ed3a605e3d35c8d805921313413488be2461ad8033fb037fde006b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
