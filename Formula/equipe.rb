class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.11/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "909249504f082c1f3350206bd9d886889207f39cbfddb71a62784e38237d8c89"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.11/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "9338bdc3bcb3027578cb832f922b5c877b775474b8f53ca12bb0a657ed20d88c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.11/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "18906ab5b674b574c51b0e2f81774c31b33c155f42fa67b1c2105f7c43e999df"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.11/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a0500705688de906e7919a3877021f2c3372441c9639031338c99dcfdecd9868"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
