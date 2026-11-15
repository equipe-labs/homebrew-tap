class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.124"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.124/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7a4e9b11254d4d743fdc01324309be16e30bd853fccacf272cabc95e4f741097"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.124/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4d44bb348053efe50414f036f8a5bb777433e5a4de3f8a418b4c1f85be72394c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.124/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d1f8d2ec5c991db9abc5c6d9cd6b101cbca62e4501d18e5e497b943d9a623eb1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.124/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5fcf2eefd73f77ca6ae9977a24cbc0eb9a216d3639661510da90fefc30e855a1"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
