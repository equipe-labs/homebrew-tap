class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.48.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.48.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ab818a5d5be8203488a4f5ff5347c620561c7f15508ed2afe2d98e1717f68a0e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.48.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "ae8ae657524ffe817d0965c848064607066dff4faa92d11c46b7dffb41c538b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.48.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4fac888655a9805fc139ee749503ecbe4d9ed254d8849c82fe19f6339b8e9c76"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.48.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4c26b4a5ba2523cc1f08c369f3f0ac321b51516a4215d8113a5a0000d51ef0b1"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
