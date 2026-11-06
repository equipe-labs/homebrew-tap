class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.56"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.56/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "6551c837ee04b051f0e57b2daa2391470bfec2f76e40e544591f2939a883ebbb"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.56/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "1ae8cee541e1b684703750782992d15d317a89871b2dfeb922f496bcd508d3b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.56/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b13eee4865aab10e3eb9111458dca55b818847f7af0cbf6866976cb76e88f9df"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.56/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ca2223d456fbeb5d3b5e8df53ba7e688cc47fb707f3525652f460a843f15e16"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
