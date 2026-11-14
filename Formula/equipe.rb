class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.119"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.119/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "9ca52c2878cf89e54930c9a33f8f71a92fc81e167fc9c7aeb84977c7db99f83f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.119/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4bc2a468a5dc93f3dd54b87a3b31a77e65b717d361ad42ace89d00bd9e184f34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.119/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "de1a2c7db8d646109ebd728d42e15c6bf7a2ed30a835c5efb7bf9854484ac52f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.119/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "355d2210df8f46b90fb1371833dee4353baa20b12218d823806f70673e3c483c"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
