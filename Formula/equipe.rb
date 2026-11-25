class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.176"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.176/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ca5570e7a25db57c834dfe367693407cba056c0bc73a14ae21f3074d025855dc"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.176/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f23ba6b3359fb55aa1304d10455d2805e0dd4d92a237d78dba38b0b4a667ff57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.176/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a948858c3b2c73cde51585f6ebfe49516273f2f5893f7a4fd2c4447a19451d38"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.176/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7e8465218bb40319f6bd8d18576e2532ab5b7a432932eb996336fcb7c43ecab"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
