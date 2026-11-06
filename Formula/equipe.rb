class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.60"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.60/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "5a03741afdecc54165154e682c75d7a4cd532252eabc10de241bf43303a4d8ec"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.60/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "629ac0f6efd792dc33b09fca88a54ae2dac4674dd405c1a9ccdefdbe6368a163"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.60/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e018d400a7587ebf750abdce681536c44f8ada9d8a81d0d757a753b71d8ea216"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.60/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a401ba2380112670081e7053363fa49b42b05a80bb22f5cc5be50b33cc5a578a"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
