class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.30.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.30.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "52cbd74c8e0fdf1367b13df3c99a646cc7b1c0ce2909eb5f57eee873b41faaa7"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.30.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "594e54bb3619a7ba238c6cd4e21b69663fa4729f30b3bd226315870b77a41070"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.30.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "57296dd303516cb5b0990d997917655868f0677d4a498b96a9b4d2c0939b0b54"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.30.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f307a660de6df7fd29e7a24b5236110537c4a1c522b5d28619afa0947214b46"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
