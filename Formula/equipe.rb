class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.20/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "a550279099ebd7b23bd8074386fc4ef0b3a0ded65294f47cd01fcf49efef4699"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.20/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "76b0723aaa8146abe8415a37e32aba6921134fdca697138a290983e1ecf53a26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.20/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "67730a5cbfd9ddebd43841ce302324a88d47ef86ccc70df8f419bd58badd7fb0"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.20/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ac35b28627d39b826a4da83e779038a12c8f11aa7f7e694623a3de1142d1cc5d"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
