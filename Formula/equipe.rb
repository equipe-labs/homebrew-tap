class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.93"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.93/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "fbe4b8b59be109a27007034b79fc9a8cc0c309747df834f996605aaf7606721f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.93/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "313be394b9a940c58b4bb0247936182bfea6f850068b2bcd3ee5974f3ac60efb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.93/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d5abbffe0f736e06e87e8e700a4429df87d43e73e0b95224d5af7a0b4caf6ab4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.93/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "04b70e1a4049ca33a58ca67244a4dfc2c44a6c1a65b9b98d8c67ecab31de571c"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
