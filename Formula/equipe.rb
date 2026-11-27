class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.201"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.201/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "d5daf44be3ae08cadd79dc9d5044a098f3156b0cd4257c363d566cf559d826e8"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.201/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "7a73741ea63cc4b354eff2482572889c280220dc0d4fd61d33a1df9c5b4b9e18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.201/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98e402daace2aa9c4200342f73a07033728bfe999ea191afaafbe86ff214149f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.201/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ec5030199a2a4b02402c6df34aad26fb8151291069d0705d8397292e97b7734f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
