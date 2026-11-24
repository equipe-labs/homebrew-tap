class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.170"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.170/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "dc51b58e4e4b0182f59468bb3dbb9ad48a1039e2c3e973682790afb6c65f1ef6"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.170/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "9bb697aa1069a4bc65539c40b7dd0fc6a9cc2b3d9d10f6a0fe3e51a04be62ead"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.170/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "77e81c9656f0767db4b4b4f3862c8a8dcc34f31e8cc279b6952c4b9af3d96758"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.170/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "24a05b8e78cf85539380c526827462d995467b905dd44b971b15b619cd1b3dde"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
