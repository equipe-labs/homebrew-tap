class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.185"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.185/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "19a34903a5d7d3ffa2b14d622646a6d895b7dad2ea4ae691bb7e5eb43981ce46"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.185/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "3dc63164b05dd8fc5079dad0dc8a8e0b7ece7ff5f4a42477b8e2608c4dd04992"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.185/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4db0905685490ccd3d2ad1578f2a494a7277403d3fc449aa791fcb14e156b52b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.185/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "11d40795ba4cf801f3e822d28f7c7e51102f5084afcbd087abdfd4a3fa9c8f62"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
