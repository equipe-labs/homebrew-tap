class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.135"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.135/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "b1768aefb54e80935549f31cd5a9143eaf37e8e66f8516d89192bde3f836e2f5"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.135/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "97f65f66804b0861ddc60a13d96b41ec37367cc11e6b5d23a97a5dd10658abd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.135/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8c8d5878face0edea06fa25249f9c1113356b129e57fdc08a97e65c4b2a3d298"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.135/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "71c46aa4eadc07090ca066a9287d2abbba3bda1beea089fd0368c430e61f324b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
