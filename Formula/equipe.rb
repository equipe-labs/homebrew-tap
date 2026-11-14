class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.112"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.112/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "c21c66c1f50fb4b60ad867ff9f9381bc2083f12ec00ccb1809c10dafebc6c88f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.112/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "e5ddada939f904f2e38f88fb4beb5959b6a9111b75b84397a3b0e9c223ec2a35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.112/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "84e1d360e7a3ae318c9c7a9e86ca071d932c9432efe0d345bbb0a1abb52a71d5"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.112/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b0536613d1380e613ba7f87257e8032ee670893eb5a5449291d88dec71e0ba2b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
