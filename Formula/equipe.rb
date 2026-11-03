class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.9/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "a8e7333311c85f28b37aea628f7594f4379fcc39c944789c0337e1f36a0dfe05"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.9/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "87d5d612b3be171e929f0f75fc2a914e56855b2aecc8a75b7d3478538d74b21a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.9/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d31a4544f70ceef7ee956670b36055eb22711fe8976ffaaf52a61f24c7fa0438"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.9/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d30fbbe1af333d2b1a3c96838ec310e31e3d18b251e31fa82dd551c52a0cb912"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
