class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.72.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.72.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "de99355a98da14589a791a5e7177d467cac0f0308384de5f37e1992becc3d157"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.72.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "48547d62ddcab395399ececfbafa8f5733835ff0606913f5c32b7eac76f26afa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.72.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2a8b0d4538eec97302b3acd6a55628a058782d436ff8c18c0c09e1634d1bbef9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.72.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "671ffd9e617cd8921cefecb6b08e1bcb46de54c37d37e4770b836c4b1f0088df"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
