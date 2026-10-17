class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.60.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "27f68ff07d3cada479fa8696a19a4a322791203ae717db58e66522e155ecad59"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f47735ce870f71df9f6a4c0417c2b66c0486c156fc623c48c4dc61cc84f2fe6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc17762d253b32f4064ffe353876b4794ecc624ee2e19c47eae74559336d4381"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "72b40b24785b765f1c5744bbfb7de2d163a6b2c72511c67f6b4d64cb768cea8f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
