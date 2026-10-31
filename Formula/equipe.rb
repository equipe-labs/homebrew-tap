class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.96.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.96.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "9a456e186ca137a7e60c3da85a6718f1ebcd23500e4936d78f1e7fedccdd43ed"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.96.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "58c8e5e583a924c11f77cef34e4a17fed34bd4484ab88a0c6457b73df382a342"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.96.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "96c0f547c1e5fbf870bf6181eacacce38ac0f6064e5e8aad65f8bd738d5b4174"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.96.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c8b0753397089b200fe6466c582241afe9b81693e787f2b1062ddedea582094"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
