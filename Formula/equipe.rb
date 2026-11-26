class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.194"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.194/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ebb86ce22d948e57dd1cb1e2bc2b36e3ca20c43e0c364144d37d5746a0c4b627"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.194/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "7e14c541e8d6419d22257e901cb983f468f487199d9c1a26bff227329df1c575"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.194/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9ed4011d48b2d86b798df802cf28c3fbc837165a7062601adf7e8b8a31dfd05b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.194/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "80283466969f730b4e55ded8c1b8d438ea0f743c5dcf99f15c3f4316a631b7e2"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
