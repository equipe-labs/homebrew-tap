class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.52.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.52.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "4e9e6932f7a518c88ed3a656a24c5b0776f97cc90f3605d5a3e456a2acb9ceea"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.52.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "8d1003d5fef2682d4061ef7e96a007a99ee5821fe297198fe30fc4df4325965d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.52.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c689bbf9f11873f1258cc46d4a47436ab75440c20ed705938ffbf10ea9c3c71b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.52.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "98c34f8b4e4ee3980e5ad0442383642018766a88f758abd550542f6c863433c5"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
