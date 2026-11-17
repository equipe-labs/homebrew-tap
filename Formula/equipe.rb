class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.136"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.136/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "8f83ff5d830336d63dfc0e41e86a2b13ce1406e4ee23a99c675e4c028f0e3763"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.136/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f52d76f303b4239aff16f64dc2b098c28535314af5db9d3d1efc8ff7e6a0b975"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.136/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0b7d51e2e91c008d043ad82a99666406fde29a876615203ad3e5e8c665203973"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.136/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d638d8c7dcc3e520570d316c1da64270c87de58c4bccbfe026dad40ee232e65b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
