class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.89.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.89.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "b20ae3a0ef336f022abe5f00546d34dd93be416da3301c975e2e1982b095727b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.89.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "5dbd122f1612aa16aab8d4780c477bbe091663b011692ae1ce63e78b5bf92d64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.89.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cb60981b7fdd8402f9ffaa35e5a679019c26f58d61be6996a0001e36b1af2301"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.89.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6abc7fac7b025f1a6059ebcc1c32cb124ef0af55d48767301691fb53a12153e"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
