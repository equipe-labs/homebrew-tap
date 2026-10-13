class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.3.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "9df9ed15d586e94d20a273286bb37ff6db1888dc06178ef5525844fa0d4f4111"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.3.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "5b0b5d3ba6567b349868fa3e68615b72c2c1cbab9c6e9925aac6195a04d8b13b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.3.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "038486de45235f4bc76f4c211d1b6116511775342c156c3e908cc91ede65bf40"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.3.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d1b036b4e86bd8988cfca8da95b43703a8139349dd720e5c6e1b3a4b2a1ad13"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
