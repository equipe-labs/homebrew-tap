class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.144"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.144/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "3575036fa0f5e211341553e8d16070d57ea6c230351ba66a5d47e850fb872a38"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.144/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "b583178a87b6555d09d4c687d427cb0d2e13a30526c1b515b403cf2b7fa2d269"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.144/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3b3dbd2d5aa3abc9884faf3a02195bebabbaf433989c3ab7c525dfb9680c2552"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.144/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "987f99d8a99081e7f2d3f7b3406d8f8d736ae4f87aae1a7f73e01610c838cf38"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
