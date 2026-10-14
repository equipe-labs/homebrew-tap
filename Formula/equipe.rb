class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.25.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "c1a2c9b6bf60d14217b354cb9e0f9270a6fe1a7526ab52d63c8ce9cda4260ccf"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.25.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "77677a34bc32f9f02c5e0503ce661ca8134bd5b63e826fdd8c3d0c99e9a547e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.25.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4d967b82226947dc7c99c9d74549a7e9de32fd4788c8229d1eb110b322046c59"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.25.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "15103188c328d352b764beed0fc06d348b8489c16a88e3692ba714af9754a3a5"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
