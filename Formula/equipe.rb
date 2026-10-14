class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.16.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "bd65e4923973fa437b00e28b30a112308d949c09f5d34a061cc0877d2105b01f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.16.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4abccbf2acce9ca843999295c312b6015d59806833c53ed0ec424398e4d51c15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.16.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "50e55f1e152e12c9f99f992e2e134507ab5cfc276ad374c88fb06ec52e2a2dee"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.16.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f8e0efb535416930e10e392ae08537f01afe3c5ebe20573f09117d6d80d02842"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
