class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.84"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.84/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "649938013141844762698cbda415791e17bc459682a2370bd2fb50f03855f438"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.84/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "01f1de94686fe7cb3ccc7979a7afabdc2cbaafb260d408fb5be9478c85fdf8c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.84/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "edcf5495d338fa11ff4da5323df191913472e4e66c5926f4dbcffd50519e1435"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.84/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eabaf9082f55435d49467b4fd4c316da4459a8318dc78aef1f2e7d72844db0e9"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
