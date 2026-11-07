class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.68"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.68/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "2831e0897688bc2301c3bd799096f91a3515d44ba46b67b84fd50d6dbad876a1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.68/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "ad0f4b51ef7ac015bab99677e7f2e4930829ede06881e3901ce3efb4a5f27662"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.68/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9cc94412ded581238ad037de3bb41bb3fc23e2be05378d246e6be22397a49382"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.68/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0f47a8f7f42d5ed57186be2739ca1b1884be21bfb7a7ea58f75d91bad32d2333"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
