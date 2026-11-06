class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.57"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.57/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "d9298de75a9683cbe3e7d417ca35e5878d73a53188c15e41e2ce936a7638d86f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.57/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4098fd8d943cd0db54f797c4097c2a1572d4732f5e38b0a9e4604ce53ed1315d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.57/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8187dd2f959268bd34898f35caffafde583e07a5df03b0b858ae1bedd5dc5861"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.57/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2e1e6296ec3305980f38c47cd1bb0ab2e840212c43c114c8706357d13fcaf328"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
