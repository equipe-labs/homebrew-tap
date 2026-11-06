class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.54/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "10c4322fb5b3230204eccb701a0686a8b438ecdf8e4acf1828a93c0e6afd8dae"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.54/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "46d6a10d77bb8c2b38bf8bc16cbe543246fed8ade8294cce67ca373df458b8ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.54/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "37f54c64f956aaa7f53d4eff930a87bd7d1a80116277b0b24828682897009b8c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.54/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "92270cd7dae6550c4d61356d77aa3525a569986d1b761e2aafb5848db8287537"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
