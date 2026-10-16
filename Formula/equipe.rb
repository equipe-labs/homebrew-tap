class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.54.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.54.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7c3dfe494dd4f1f3863b29acce3620e74744e50b5016405b9b45d10fc769d2fb"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.54.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "168181b8d6672d08335ca1c1b548aa020348d535aaddf58a0a567b054252eee6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.54.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a28c33a8ccd5bccc9e6422819e07ba9e3468b5ad34353524d1954f39a603e5b9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.54.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "25280b50d1917581f3e0c6d8c0a14b7247b4b5963d4fb745f43df2fc4f6a7852"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
