class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.67.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.67.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7ed98b6e8a250fb421c055fee49286991e44eccd25ac2523dd12b2fcfbc447d2"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.67.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "44339f539c1e2f7e26fe08f40b36665604c57c80516308ca9311a0ec729c9432"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.67.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "496c6fba29a6b690106e9ea5db27fb81b9c0915236ef363defdb24ec35a3dce0"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.67.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fe4b57d5af4efee28e1d34d610d67d333bd054e48ad4055724d427032c0cc23f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
