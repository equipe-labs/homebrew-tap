class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.73.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.73.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "01b980954489b3bdf0d25cc0a5a0d644a75cd9e9c0d5eb501ff6472154d8656d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.73.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "03766f900f4d7e51294285f6fed9022f7a3befe84751f3bf202a9d1302359ff6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.73.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "29be69a4077d026a4397fa7fe9cbca4ceab984d45aa7ab3db5c88fd178722ec8"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.73.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a4a943b2f8b5e15f12dad16c6bf0efdf7f02351595e01e9ef14a9a539499c76e"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
