class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.10.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "a9f0268cc8122e4ff3d8f1348e1f3f0be1cb2d89425f7c0fbd5317d22b5f8353"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.10.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "24376238af499c1ad828d1e22ed205e6101cc5bfaf1f035178014b7a3009e41f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.10.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d02e1d31742ca47100dee3a0e1996afcc8ac1e69c96498484fdf0397efe2335"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.10.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "18d710ca5b82280b634cb4c2c66c47d28a7c22b3f11c6654711911a18b695ddf"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
