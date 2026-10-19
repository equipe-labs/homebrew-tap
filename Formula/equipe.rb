class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.64.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.64.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "b9a2d455121b06a501f61b84758885136a582657986b1651d1d32ed7e901a68c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.64.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f5c0c22b90d5f62f98d2014c8935009b0f278f40c0d0d95fc653ef3e1b8975a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.64.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f85d8481930cb3ad7ed45c14411086365e89404cbe38c5f8d74155e5b809a460"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.64.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "189bc4b4bde1080551a0325d3083aa3fec1776146c696fb9aaf9b1f71e175b4b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
