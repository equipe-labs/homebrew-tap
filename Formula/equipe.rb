class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.60.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "c5be21603ee2ed6cb7c71f53ea685d561421a652479ebf3ab6aa77a256c1c256"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f4a9143174b98f0b17702beafdba45d90bcfeccb8008237e1941aeb3c7960fa5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c7d1eb34c29c43d3348c0099c7a21c98c32bde3ad0b52686847d09cf168d3188"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7604298670945a72b4b372edc86cb8150f457040c045b09c4d094100675b80cf"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
