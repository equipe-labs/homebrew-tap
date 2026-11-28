class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.208"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.208/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "8c1e21088204ee0d512dc0152e149d426d2b33cbe77547288ee52e5317f43e96"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.208/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "7bc134c72690c8c3c8d7163d0a88ffaf62c2f1fac9a0ec77dee626d0fdd0d67f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.208/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "430080369d6da1c45a514a18ad1a9506c3b61c80f33fbbbb8d19ca7fa0cf77c1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.208/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6af494184a3d4686790a376d3126dd4955adac898626b89b4ed595a88cc89465"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
