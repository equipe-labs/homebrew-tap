class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.38.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.38.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "f0de6600268801eb661eaf85051093f49a9a2562c140d9b4bd0a5ca1a3134d55"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.38.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4233a2c8998103eafa72f80a4b8593b348427c1ba9d26f3c925810b46d2ac0ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.38.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6d1556613130b613216a658e20ae1354aeda4dd8bccfbf678bd4d4ede5fca01d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.38.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9e47adcf305bcaca79d03e1e772728b34b7c3b5f852778982c2537b003ea60cf"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
