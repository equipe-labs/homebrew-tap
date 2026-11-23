class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.167"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.167/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "0c11c176177104dc19561d7c2a5a87fb3e580164a9b8e9ba0fd631d767a6322e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.167/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d4dd1d8bdc836e8e6ef9bf8622a1ae56bd78920c4bb0a76b863004d85a8eb82b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.167/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4d2a311fbadf7d569bfa14fd13b57e0910270648b2b295d9938a38e43f4e936a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.167/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c18a17cad95d14a18affe0dbea0c7ef2aeb7db7045604d43726ac9c426ce429b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
