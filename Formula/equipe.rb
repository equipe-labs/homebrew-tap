class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.37.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "4e3470de364975508702dbeb84b043de15b4b8436ac84e96b2b5d526cc2fbe9a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.37.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "fd1e5cb11a3561e5c221ed9ac64ad82623433f29554689aceaa0df75161a0cfb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.37.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e8cdbd3a03060327ea760f448ad685ce04c4691eceafd8e4a6d3f071afe5794"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.37.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c5e71498f2ea3831fafcb44e01215b148578b16d60bf1c2b609b3def90d1782f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
