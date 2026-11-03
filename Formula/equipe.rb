class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.15/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "3c03d8b0437ccdd3e964a5a8f5eaadd49b4a9edcd967e5eeb09a320a71be730e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.15/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f373ef3d93c6d42713f4e0b13da403c0e8527cb907f5cf48983289ce2c0d82f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.15/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8888c40049ce001b264ae2d55db7a3cd0df054006f4c2fe6ee5420c056317e91"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.15/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7a90e7c7b34a3ca050b222cd5b642b04e1e14acb51d1b10f750308f03912a25d"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
