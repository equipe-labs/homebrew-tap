class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.91"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.91/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "af65a30d839f359ba79d1932f33fe9789340267fe3798fd6f9cde8898d4b1002"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.91/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d70b44e8d315a65da4dde11d06bc47e2a8c61a91ae9db8f45660e6588f86d21e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.91/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b4d7fd0e09d371bb17dace415c5fb6c53f7fbf7251db2aeae90557da2f239166"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.91/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "995a902c08a832c58a91d405d2466935fff2eac845e4286375352d36f00cd9d1"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
