class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.18/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ef7e37a9894daa9fa0e80966ca1615523c41f48007741017decc6ed1e0051422"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.18/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "9c5dff4495fad6737483942427c333fe5d7d41b5e1909f59628e5f2359bd558a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.18/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1cf17d4be55f642336edde88a7e800572af61e6f0c44f5fe8ffaa920c1170429"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.18/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8760bdfa5b246aee174389b6e877ac4af4ca33c4d1746c2b2bd27b2962dcdda"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
