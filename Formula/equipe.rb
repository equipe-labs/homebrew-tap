class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.87"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.87/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "23f08423d46e03370242fa08e11de35dbf6fbd471d586c78df3223e870a062d4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.87/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "70923cc51094c6f1fc051bb8f8546662a1dcde26d8cae071a3773142861be8c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.87/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "75507f23c50ac931f484f044a9685ea0be3540e94c34bd0b4cc4d1bbaffab7b0"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.87/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f0d19f88d7a5a1f9e5fa9c805f586693b0391181e0d8a77305dafee8b5bca1d9"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
