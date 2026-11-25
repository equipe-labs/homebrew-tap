class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.177"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.177/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "c1b69e3e74286f3155aef5ac06aaa28206eb6c5146fd6017ab58e6d57ae20ed8"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.177/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "1f921944b121e0898d42ecd4f6ee81140a593e08bb843f2a3e63a2f3163d93e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.177/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea903e02d0a38151d0459ca667dfea501254338e883607e6bd4c1023922be339"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.177/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "14e41031a8c1e70d8de82098d9e26060da3986e14b5f1a5d3b9e73d1b3ee7014"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
