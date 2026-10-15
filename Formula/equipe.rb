class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.34.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "0cc428b88bc867ccc11fd5888c99038dc440c12e45aa2ccd6d33856cecfc7e12"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.34.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "2462837e365b043359963566ac6651109b0e01d840b59744cb25089e7ff1c9c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.34.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b513287ca03f81149e9e95c41bf5a5dc1d322203741b67deb864b2dc1830a5f9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.34.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "82cdd396e3b677093a0383cc49ab6b259122479a43e4d38f583650d2b4667e2e"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
