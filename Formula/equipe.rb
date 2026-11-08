class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.71"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.71/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "95a163a2166b06db99b692918a1ed7045f66e8d01708a717390a76ba40e056f2"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.71/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "af8dfc95484e9f45dd0f19d593909ef1777a5a2ec48ef9cc997ee293e2618721"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.71/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "081d860e01fd1f10cd15760915028a816bb4260ac62322acdf30b211df65269f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.71/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5510233fca0b0d2de6233dd7d7a7a237e2bdf479e2f4fee7eee5a0155131a969"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
