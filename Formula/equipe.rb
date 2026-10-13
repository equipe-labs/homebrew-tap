class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.3/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "f3938249db156f5f29dbc1461b8656d80de0609e15f9697f3e98ab6d05e09432"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.3/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4d7c78c3e4f7ee4d13b4738470fbd66c24c13a6e7d2b4bfeea44e53d779b9808"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.3/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dbae2f96d8e4630c65d2fcb0ce4c1d633c8786c42b0edcb89a0acf8567bcf504"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.3/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6c528e9b31b65be7c43fabc0398027d08c4ef4bdfb3c102f407925f75b22b0c"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
