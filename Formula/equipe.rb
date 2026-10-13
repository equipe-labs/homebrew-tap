class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "eb20e608b30eb36f30e4790b6540c78aa2416d8ec39d5fd1db90e0d0b0dd03b0"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "705d2f40ea9f175f3bb727ab7d2bb9044724c62b35b029086750311c8a073efb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "23e9121bb67e16b452a88aab1b885c80c071babf837b02c128880c47b91e2489"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "847c95f1266020c37636cde40b77bf5ce43cb62ce823bd7751e99e19f3604c76"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
