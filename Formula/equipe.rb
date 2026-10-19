class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.76.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.76.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "195ad48cd60f80717f71c2f43bad242b7cfd60eb3de5e9e15f9310a7b6242008"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.76.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "42bd161a41bb7dbdb41c35b24a1b8925b70cc4ddc6a4b19f34b9f9d9d0f6a391"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.76.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e51a4f53b870e7d78767ded6c75de1a463c91bcb7eef5b8c3152c03621ddbf48"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.76.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9bec26163ff0dd331e1d3a73c22a78500819aa50a49f3ce4c74dc5a9c35316fd"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
