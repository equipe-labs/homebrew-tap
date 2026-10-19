class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.77.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "df144d194f36baf48e304d4d987bcd64a5a30d7692ab1c602cf599ec7e508104"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "02f68ce684b5ab7e8847d38ae906db9bf2d26d82afa5d81a0723b82e916d4622"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2fdde6bff08c426da623ac975f628a809a9f67a3e0022539845b0b73760057c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d03dfa1a5c5ae0218776e32f5842e77cea91f2f100cbf88dc2c87bf9a215c1b2"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
