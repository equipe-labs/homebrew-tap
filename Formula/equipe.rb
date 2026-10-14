class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.30.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.30.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "c51747d19da9d098cb0e162328a5a5832de97fedc607bd715493807eef794080"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.30.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "e7dc7a5e44f2f39d3b552b750a6f4630d99f4b179f4d67350feee7b88dad86c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.30.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9f3bfc070c44c237e26e6dca852935dbba9f05e1b67f2daa822ce2ef0645a052"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.30.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "98b154fdd7fcf962c71a43414e042d5bcb4e6a5284b20f979641df20cc38b57e"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
