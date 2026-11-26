class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.182"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.182/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "a09f8a8ecd35e3e6ea1da7a615abd1442595ed3163599c284d0bfb08f2816d8f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.182/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "57a45a7b5157fa1cc8bdf98f4bd5db1829939801f66f3a92ebdfdee2a5a5b999"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.182/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "37293a17d3cd067f5e2f805566eb5a443760b5f433e45d22cf5c34c6ab0de0fd"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.182/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5b813ae138a3f061b9950b08f6caea7a2c010e7b120ea871879042d12c948b46"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
