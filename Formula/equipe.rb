class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.158"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.158/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "f6d7d6625efe3697cd76eca3d105c9cdc851c4321d037b5f4d31688a9fbdad6d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.158/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f203058fee58c41d2be70ed20ce3b6c0998110442e77ded989f03f1fcb01cdb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.158/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "81bbe82ae2571f450b036561c380e001c99fe3520f2c3ec7b9d2d2f31519583b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.158/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "32bb2632f4945a0146c8273bbe0c63a8c0f35e3f0f0f9217bb8dbb96d5716f5f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
