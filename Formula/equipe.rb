class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.101.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.101.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "3d48f7bb25940d5364c2f4a955d048952ac511faf2ec2168f2fbc1921e009cdf"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.101.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "93d497bc17838211124c5a855374f87ea722a978c82839e880777697fa1de40e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.101.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5ba714d302b935bca60520ee44bb363fb58d8ccd6dc44a64135cbb0eb598d308"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.101.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0dd3c1ac101dab1aa48679220dcd3c6914b911fbfc0cbe65818790b1647ef6fb"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
