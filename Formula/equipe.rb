class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.128"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.128/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "f3c79c9b820c31dbcba7563c66aeb6b921223c5dffe2f0cc464d1b3399ea57c8"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.128/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "e8c1dc88821bb4e6d7c08b055b307955c844bcf77528504d7d16fed86412a54b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.128/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee01de6346b56cecc47526e013a7be5fb662e0e42ca154fa6afe850cc42fbde6"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.128/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "03e6c788886e4e8bd99cde2aa18dc795091c3b2f07b485af192a320a800353f4"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
