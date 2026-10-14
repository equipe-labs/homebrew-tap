class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.23.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "59ebb91565cc0c45911a05452619efeed5226f5c80f3993111ed9a1e3ec21102"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "45e58a8cd9fa6ff03a5e5b6af57002ecad5673bd286a803a2ce04cc3d76e9fd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "48d9dfc2ba5c624cde9128a5f2f37ebe56a7cec65cfcd0a131bc6e8122cd3acd"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "817300960e29de1266f0058e7a14c57030f592cdc6771395ab7ae8a291cdde81"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
