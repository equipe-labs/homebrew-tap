class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.35.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "a9c11c97b90edb2185a5d42a9e7c8c962e60054384ed7798cd2b8255ba278123"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.35.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "815f0af68e0d38a9197ae045bd4b38a81e99a6d893133bb6d819c419e47c293e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.35.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2f016e756954790dd45560d13a05e56baba008b4d47df72219a342a7abf19e09"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.35.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eced69fa234efdded7a572bb09b1528760c6c3a454dd493a10b0fb5db52050da"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
