class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.83.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.83.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "357e0f8ec83ba135fd4e0d45cb6e5bc62e8822a80143bfa48349810f5571d4d3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.83.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "7496caed1fee71ef828c709ed73edd5c72cd5d5908dfbb7e175543bc628f3ec6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.83.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f2c4fafeb2b2d2aea73942e6bf49d454b2eff8f242ef4e493059aac14fe6bc1e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.83.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "28bf534b53049eea188b615afb45ff5b0b41462c60854fe6d66c3b425419a1de"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
