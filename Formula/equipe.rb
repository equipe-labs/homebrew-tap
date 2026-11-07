class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.62"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.62/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "2f73667b2a1b4945c0e958d288d46e06ac13c5865bcf455aeaf1baf096543a98"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.62/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f82ff6606bb5608a5e6e22decbc75a2f1e04d0ac15cb3b9570c517646d2615c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.62/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93f32652c39544c79da3fcd75c6f05907463f6633891b3890c7ac04a12a2f59d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.62/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "79cdca414258a2abe22fa48bbd5e75e1a91c5b916a20048250f4262a2f2ed6c3"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
