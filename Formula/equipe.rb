class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.4/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "879212147f13c586e24ea43cac011d19044c9a981d1718c5137d27fed4da85db"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.4/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "117cccd2e1eb72f6b8c6788a7f8042d91785ac2a3dff60780560a20ebdb0da94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.4/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d55f40609d626d890bd88d92a978b9703222bab2c9dc70864c31b805173bb4bc"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.4/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "682ea94d2d563111258e5288d656667dd1114fb6f55526e1c26ab19a122b8dd7"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
