class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.88.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.88.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "77845523609f86a1fe50681fc111524b4f608af734fd32866511d1e9f03dc0f0"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.88.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "6dd4a591d937a624021c5ffe1943aebcf1ed531e836c2e620fd288d8f3b64c92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.88.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "96b2cb1e5ee5b2d44442cfbd4b20987b83965e43f3f315b9c77225e61d277d7b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.88.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "562a5bb7ebf0d6277c2d10bb5477f220cb264cd55a616c19a8e4f4d349626717"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
