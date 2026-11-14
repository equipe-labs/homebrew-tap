class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.117"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.117/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ccffb228253de64e4a12f0f0b9bb0ff54d5bc574bcd3dbb2fc29ddd12a9b2419"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.117/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "366d2bc5bc6027d81a7327a4b76d58f3251384483c6c3d3bc4bf70f0f091a8de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.117/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7bf7d14021bc5b6915951b126b8bed5f87768bb9ef83919ffb159b0ec5f2e3e5"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.117/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a07cd2ba546d16d365c1b264e363e0ca37e0f962c5532a9cc499fa4e171249ae"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
