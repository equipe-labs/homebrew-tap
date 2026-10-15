class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.44.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "75d0e6477d3412c4b95f57f224fde6c9120695f504b54bc138e0cff2d5791cae"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.44.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "57a8f856f2cafe0869549b342ff0d6c5a9fccc885095cd4f4e449d494b268e91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.44.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "186bfa7d07a6b060f8a2a2328511230ef6c7ed349d1e65c016e2b4c5449190b3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.44.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fded74f67b41cd91bdd08fde29e89f3d736719dfa2b8e9d3ba60747bea7320d3"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
