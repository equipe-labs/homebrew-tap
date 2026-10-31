class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.97.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.97.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "e0b72be8c9bb496b40531f17b52ab6727d8e388b9305d4fd73b5b9364edd35d9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.97.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "52227623ead467ca53c12f58395049eda934e9554b58d904546c7e80da147de3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.97.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "42b7d60a80ddd958856dae001d085c3cf4aaee9606eda1a516291d68faff9cd2"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.97.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0077eee39d7284371c9103e80f68536c39c9bee8f1e139a006445c57e13f8a3d"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
