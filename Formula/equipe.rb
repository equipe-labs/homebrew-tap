class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.38.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.38.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "270157df56601f21c27c47131bbdab48cb589409e25dedde02ecf67987f5de98"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.38.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "0cf3c2af222b20e6eb926f339482688e61e6dbb60d0bb34c47702b867dd4ed0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.38.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "15ad63a2abe51d3d4ca18fa74787063315cd28fac0c6af4a5bc2a0b355c53751"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.38.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0af23551764f992fa55173e81fd92eed7fdd7e2ac76c961771b880521053a282"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
