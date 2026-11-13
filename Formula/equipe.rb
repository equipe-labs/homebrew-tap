class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.104"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.104/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "cc1237f5c48ad186742bb0744e053e1cc0b36a058e0b695aa9f555422dd51ef3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.104/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "dbee0e8e1d007f15a22d4bdd112c4f11ac5b98b8ab769b5f42ba60b3a28a1322"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.104/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ada50d8e4f4e908f3ce6734e355ab3cb3841dd011681b68bd18e733d4882ea25"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.104/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "34a5b21930bb5a7fe3212147e9eb8f8cc51f798d873830fca760f947a3d6dd7f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
