class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.59.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.59.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "a22a2dc799f6705759ed42ff1f2a014f26e14bc12e92dfeef034123f5d7c3619"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.59.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "b9823472d854041b1377a9a29b2df35bc2ac42ebc8d639eaf281ff03ac8b2208"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.59.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bc1f92d45203368cebbd02d41bbd2771f808760a60eb09f3d7cc526200d1fe0d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.59.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "226622acfd51f11f12d8da05fa7c10a614df8c5d4672be9e978c76042f7b384b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
