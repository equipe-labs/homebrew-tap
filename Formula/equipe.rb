class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.23.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "c6f4fa533ace5a5e17a7790aea2206575226ab57736b57b30990e41eea9b480a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "b458f659512b0fff7463233aba45d2af6cd0705d3854cc44589c745a8b514d5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d10a6e8a16c323b8a8ac939d0a96647438b10e4531335a9f3c05fabbbb6f8994"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d374b17f38ba16164a46157183af4df85417f6fa24327a7702d7ed1b0314ad2c"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
