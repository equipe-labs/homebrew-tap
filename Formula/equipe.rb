class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.31.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "9f0948d559d63f40b77c6c475388bc8ee7c1acf8721a1c6adcb8402914193a34"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.31.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c4c7e1a617454e9d7c277672e9350949d6105324a229df0b0931b43fca9fbc6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.31.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "203574f1233ed05db6038ba21e771733da71c8ec7c5305b2dadc22d0c9595299"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.31.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6cc7f41c2562fede66584f4e9b2b76eaed1e75656b686bc17a3d45c307ce21d9"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
