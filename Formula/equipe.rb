class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.150"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.150/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "3c93dbcf4923266e4538ca1c1d97dccfc0d3266978054d4715dc58477f6e5f16"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.150/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "1f0a0c2ddf923c1023ac990fbb6e3758f25177af246ecf436b90107aa50b74ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.150/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c67a9de3dbb7f132e1bd49cb18335894333ae8ec8cf1c9b18ace1c7a51d60f4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.150/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fcc04c9dfb9a12f3e363c0772624298b98f8ffe8e4f42aeb287026fc5b58a024"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
