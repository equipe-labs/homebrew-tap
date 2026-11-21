class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.160"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.160/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "46c0cc503581b197a22d26fcf9981cb54668490cfb2358921c67303f9c8a8b89"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.160/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "9f805e65908701713500efeb3e67703e86e8af9c8d6a262e11ddfd5a6cdf94b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.160/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1be7f9f5b0a1574e8a7def902f42dfe738a8748b25701b9cf17391b2de15cbb1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.160/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d768403424353268ab74ecfa2419448587f740bd3cb060aeca9eb26e97d72eae"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
