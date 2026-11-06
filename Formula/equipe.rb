class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.61"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.61/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "e0c455ad81912430b906f554293d864f18486b1158a22c78e1d07bb585272a2e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.61/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "683a3491b5e16cc70d80714e6f2dd61df12535592634c04a07459191de5ab2c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.61/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "056c6b9eec19d6efbc4e3fe711e63429e5716caee7b733f12d684a07cb12be2a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.61/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2652de40bd960f6a9fa62640aa5480b0c513a879666077feb7498bbbf387a471"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
