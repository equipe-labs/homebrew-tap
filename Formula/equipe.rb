class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.86.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.4/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7f7da2d2aad53b8521670ff57a9d1c84e0f3cf9aa0d98b49d8e70a6c2491121e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.4/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "47ef88dd81a14789e8f4b0df38dd30b4ff01d50db319cc149046c942171a2e68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.4/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "da276db609b4d1b7404c2f3c7f75c3a97b96b522123d12e00b5fe37eefd12324"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.4/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "84d4991e85768d3938760f5b0a3ce3d9679722eb93588955b633ed4d8e515921"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
