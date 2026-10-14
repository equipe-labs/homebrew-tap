class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.25.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "d5ce2f62f9d24128eebf5b149606ec8406961922a770dc58e41efef2ec92b343"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.25.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "85267aa654b8272e5becbfb2f2e2a6357fed92725dad9f1f205c3b9cb19293ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.25.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9ac0a76da702e9327d3c406fef2c774148868dfbbf83d1127bfa9bf650b75a22"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.25.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b80e147c8b18ca0eb621eba1d31419974588e18ccbc2820c89536801483c3583"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
