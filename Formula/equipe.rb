class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.83.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.83.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "9c57053f786363b40b5159ae4f0606961a3c37d3a080ee1aab4ccf14c7bb6104"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.83.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c7fc02ed5735d348fa7500045a22d2be1eb26da36935adadc467fd03bdd3b125"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.83.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3e4c215984448995e2740418e43cec99dac65c9f96ce8c9e5c915a765647c21a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.83.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e0f3b46b18cc619b89e100bb3eecc3293825f018e81a16ce236ba67956c4305"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
