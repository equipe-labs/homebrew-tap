class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.191"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.191/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "e582863fa7c721436021741fc4a19d17e025ba23ae9083a9c164233081e088ab"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.191/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "6c55711ea4c3246a3aca73150833e9403aee7b8b32712141a2c9cc2dca1d64a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.191/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f88e2f76a79a2cb9e4bb7476029a401438f0d28602cc96b563393680fde55890"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.191/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "253a577014e425ef212eb21b78fe3550ceeae2494a1ad8380d0ac23a9c902e8b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
