class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.106"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.106/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "f45a8d9098c702a7e0f461f77217f3bcbe8d9194f9d28bfea03358dd990d0a05"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.106/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "738ba45aea10d9f30ba6a18cf2c196cb44ba0fcddaa392365abb6948bf362829"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.106/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "656519c113366cdd0839ecec9b02a52956858dbd5f8829ce9fc16b739b09bd42"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.106/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a309cb594367cfba63546725ec278d4fd39461199a46b1eef5cb8c88e34fcb73"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
