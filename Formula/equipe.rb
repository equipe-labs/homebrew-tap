class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.92"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.92/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "d814ad290b6008480c05fca7cf4966a930c72689b20012dfb74163a077b5ef50"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.92/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "8be75eaa14540a0952bf0c1c7243df5d0d20a59c9b0658b2d7df94d06712a0a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.92/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b561d28be78ffff9184bf88c0039b90cc034feeb9e04057ffe921d68123bbd6c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.92/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f0a1a26f8a612a076290c62b8746c77c8be3be6b4e2b6c37d93a6acad745af9"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
