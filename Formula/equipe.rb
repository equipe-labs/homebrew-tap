class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.219"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.219/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "8eb58873b981082a4ed7684c01d0fcbc719044bd44d751f6f14c8a33419e2693"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.219/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "bdb30162841d465f8090102b4b77adeb1dbec0aec3883e80e07c4319f31ad39a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.219/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4bf899fc6e27d5d8313bdf342c550bb11a89e4b9dee3bc2c28f48655dd563fac"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.219/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1732261e601359e6abeea0467b396d252773b976631b99d0c6f9ce79342a899f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
