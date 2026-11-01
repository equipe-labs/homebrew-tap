class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.102.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.102.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "99f9b8ac1edb5fa084774f709b606b2ee0e9c6521c0f0d7f63acce6abf272dec"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.102.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "ef27904c3fc54c6b30468df48b9fa38bf4387c048a624854b3b215d8e1957d25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.102.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93def3bf829ee1c837689d293ffe951fe3a7dc65037aeca917db68578e2b5729"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.102.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da265bbcd8338c2a7370097c665f46340f2dc50313dd0ef5a8c0be77276f5bac"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
