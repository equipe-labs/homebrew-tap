class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.172"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.172/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7cc6139c65f7167bd9840f620929406e8b6c0766afb8e04c8192fb0b7fc4ce62"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.172/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c3bb12e0a8000eebc3cd00ca09886df15c38b18af1132a4239a1f1e312dfd814"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.172/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1c9bdd460d2cee63d6e4b9fca14049ff011e79ba626b62e1439e9a8da430f8ff"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.172/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d2e870b6e06d49cf11964070be6e84e22d47ada645409cb275bbb20d913b6085"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
