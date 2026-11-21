class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.156"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.156/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "d823f53b6d24956c3e430cb9115e311aa13a1d1d88be575a0e0d26383ff8f8ab"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.156/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "3133e688080735ffc5a3553204966ade19052ec2ea932958a920051cc411fe33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.156/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f697e1b79f8b5dd8da6ecbbe08edfc2e06ac029a93d8773dfc398d4e398ca7e5"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.156/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d207c59165eca6383f6322885a1a841505a303f0bbc8253f43e77da800aab549"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
