class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.10/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "2844025c6f7d2373d501c7738b9512eeb0e35f61eda50e63034228f8addf1eeb"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.10/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "60a18f488a456dfcaf788f929cf40618938b5da9960057fd1bfdc01b7e4ed6d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.10/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "672bf2505f222636ce95bc512b1b60527b2ebf25c10e5d48e1f201b86d58e4e3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.10/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "98ca8e2f7f5f76acea123d00ee8371980f623c0c02fd6b3ddef5824ffa52ca8f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
