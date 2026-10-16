class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.49.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.49.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "99fd15f6519c91c267d67903789c3fb25eb4588107d49b5781dfdeac086e75e4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.49.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "06675f76299ca4e46b269742e53b26c036efaa2e39c169cc01b770ebdd09aa13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.49.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "712189c3166ffe03af8cff21903ccb6cefeaa78dc1e9c38c78502685dac94db4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.49.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "14b52fdf190caa64e660a879e0e398aa036d8b90b149f39cb313fd282435f831"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
