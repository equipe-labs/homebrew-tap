class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.196"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.196/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "24d1bc52422948d0b50f17b1ba9a96f61cc6cfe01e607e09c3076ae8658a2d37"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.196/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "baa083d3c325551b4e536b840bb18319559a39179afd9811146a640134be9315"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.196/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f32a7a0bdc8020a780c0cab64d61d000c06c7eee1b9e893b714516512eb5f2f2"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.196/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "03371f93e9d05ea625a4c88e53c3c64e7fe6b87f70ab8830d5d2c98c24f2bc07"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
