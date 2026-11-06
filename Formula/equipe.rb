class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.55/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "05c3ab428854f78902076bb8a0604f0d00ac9ca5c19f60f83c8a3489f96186b4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.55/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "15ad1d595bf7b64be92a622793810dcc65150585b250cfde7a7194f68e860c9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.55/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eb171ff12e97582d753420adedb6ba4217de9a96503c7d29b7d08ccf6cc1cde4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.55/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1be628ae97af0ea1cee4f0eec0e7c4e571e5901701a93179be851852f2f38085"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
