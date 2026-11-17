class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.132"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.132/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "e7ee2291e4d7ddad5cbefe08e722e09ad1948d2d097b19218b231bbd67b15059"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.132/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "2cb1d3a74da2aaa24409a3fb251825d4a59e28bf4c2a1af8f31d8c4f468dc732"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.132/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2e5d44591664f5ec25fbf29a3f65f2c4252a2c900edd84f4eab34677235fd7dd"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.132/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "462f5825190014ea30dd8bdc0926a485295dceed1cd30b3606f79cddb4782448"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
