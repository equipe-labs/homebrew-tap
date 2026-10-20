class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.84.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.84.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "b2ade3a5ffdecbc6653343d261c9e48af67921416868f328c0d509d7b484d508"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.84.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "10b8d2e357a1d60251e5c02c60b461ebe5be9bf42205f57f5885f1636abda98f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.84.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a71613bd56ed113fc49a0779b252f64c23f986d85ca9ec504367de5c12837a57"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.84.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1faf5ed7ee99a12c07173f570e3b1a982c91d7d1aaabdc1596b0c206fdc52e35"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
