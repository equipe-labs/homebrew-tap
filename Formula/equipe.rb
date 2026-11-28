class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.204"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.204/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "c2dbeda9ef19ef79847c050ea0f350f18c8ff42e5d601f66a2c30ccac05a958d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.204/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "ad4a46a3950521fc9a0dfad02ce976df96cd67a040be2816c61b685667a8f825"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.204/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cdde8639b144527f25e5de92ef427bdc8b6f7c34d85b64da56a55146efaaabb1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.204/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "72a0f7995689423bc0b31c5840da2d7ab288765b8b8752ecb43d57192ede7706"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
