class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.59.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.59.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "133ff0c86d68182fa68fe8b06bd443205adbb92cbaaa8d0d69df6646aa340797"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.59.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "86c2e3fe3dda2ddd8f3315ec6b0addbfec5fd2fadae73fc7226b4feb1762ec56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.59.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0c78081ea7a20cc03837168c7ea12322a3567019f37bded00dd3a6e935f21b14"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.59.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85f9c871478f1bd816701eca3d6a1f745e190cad673fbb40de7ddf40a88abc29"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
