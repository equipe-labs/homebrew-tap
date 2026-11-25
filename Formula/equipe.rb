class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.175"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.175/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "511063eb4db2f60e75bb88a4c5a475b6ac422728f4a3aff6db2bb332b0644204"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.175/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "05e5613b3879906a6288137e9de72548f6288e973f44b37fde148f356e05cb90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.175/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1d60d4a62d803a4fcf7aed1797a4e343e862d76b7595cd8da86ac0cbeaa0b346"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.175/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be15df02bbba8a4e9b79187ab7a0f2bbe2baad17a1300f2a86e5d0026700dd9f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
