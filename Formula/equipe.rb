class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.110"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.110/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "fd938066428a7aeceb76e5b6e3cf2dbf5385270a728b7f1e90fa204115faaf8f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.110/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "06196f552c3ee58416c036245854f9fb59de95b365a250dd34332a8b04d127a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.110/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4ebf53024ab54b37fd417392493cac30ff65d556fc28a719e31907868d0d3080"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.110/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c45949e32ca2103e617a86280a5c08070ed226419ce16bd9dc9515ed1a0196f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
