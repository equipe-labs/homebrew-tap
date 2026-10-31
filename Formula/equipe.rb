class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.93.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.93.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "619fc8182a8b4affe1fc4c2648104b3565432658c73390ac1d411db9ef769efe"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.93.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d73aa9583d95d2421ff91299db4f906d2c57c800ed1c374cbd1abbbf90aac670"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.93.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7e4aac80531a02fd2bbf51979125d05493d56f6f12f8692cb939b63bd1e64dcd"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.93.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c67e1eb0e7f1df8c2f5cc41aeb3067761cc11084a355038f7e62449601deac9b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
