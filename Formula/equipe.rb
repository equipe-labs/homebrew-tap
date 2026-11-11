class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.89"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.89/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "0820e5918c0936caee76400febc6c73bf64fbe75e295d8b9be5bd6d7655a926f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.89/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "a37b0e0ba4c1e736d5d2db8398ddd5be1a5806c53f6d1e014ffa2c7679780056"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.89/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "58502c7446ac680b0c8d20e1c3d9d4202dcf420b77d95e6ea3dede91f8a026bf"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.89/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c5f4236e23393d98f115b664c89f636e0207f3d3d75cceed12e6d4855e083e2"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
