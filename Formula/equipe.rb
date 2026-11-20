class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.154"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.154/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "8005751847d98c35aae4b143be6bb1f3361d99ca16b7b613b944f0191bbe2d5e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.154/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "b668e80070908e4bc0dd2f26a717d0ec5659607a61eaeb8afdac1126cac58607"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.154/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8988fc1ff9b94c081bb43e5de5b0a056ecf683b0f32080cea91881baa863bfb7"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.154/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc2bf54a465bc2dce34553a00b243d31a9f2edc9d2e293eaf95c20b0d18495ad"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
