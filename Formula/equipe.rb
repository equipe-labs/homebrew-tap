class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.2.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "c494096e9c987c1f4e489e7ab1019bc52a8dd902e764697b71c4bcef80dc8cd3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.2.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "3c289a836cdb59e7d0f6cfa70c4e98fbe4e91394913716784d1e6f13aa98ead0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.2.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "80bdb0a5fdbee68f695360d89312b73b276bac10d90b9088f4981ed0e4bbbf1b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.2.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4b367f8a3624bf2c3a4881b7cfcbda46a6f59ca0e5fe3498a5912df04963af13"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
