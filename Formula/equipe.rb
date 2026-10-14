class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.18.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "b2c6b191dc2508517c1ad96be63bc343fc1130b503bb9396b44b20cb35d85508"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.18.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "bbda2e0ec67e7e8838b241406986951cd5564e7df24faed91def7ec91a8e599b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.18.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "38ba007a625585279f82e3e4ff36773fedd229548b8742b2e4975b26b81ed83a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.18.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8198e00471870eea11060ee72c38dbf56bd75b129e6e5277afdc2eb72f990a13"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
