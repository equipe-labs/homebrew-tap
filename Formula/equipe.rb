class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.87.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "fc1315258ca8c37aa41103290e5735e73fb6b0df1dcdc8a148750ecf271dc592"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "89d1c8ac9132ba33e5d5c66b771a44a286f05f391f6519009b1df5a162d7c445"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cbec7536ca545579079a08c5f2778bee756bda48e3fe38f445829e7f9312f3ab"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1084ad4f68b729b7ead86d5a3b5114ca075dbf1f927a999ab076032a1151c9d8"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
