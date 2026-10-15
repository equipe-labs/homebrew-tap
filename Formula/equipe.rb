class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.43.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "d35b7b0c54018de16312b6f63e06d3c974fb7715086fda417d17115bf4b93954"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.43.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "665cdd1d29092c5ebeab6b18a7a798fb3a788e631ced414e7a58883abec8014b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.43.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "85f23a9734c19137b650fab33f608a38d316d10ba9c7b0c251c61e887505b10a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.43.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d147b316cc7ba6af8d5054429edc49f5c927e394f78c4404fd2d93217d50c1c"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
