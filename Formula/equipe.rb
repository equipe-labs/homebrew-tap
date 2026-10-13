class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.10.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "344dde5a1a5a6abc08a8595a9f8bf6f27c2d1fdfc21b64c3fa997755104bc91b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.10.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "31735f1f59cfd3f5527c3b6972dd466aeda30765b822803277eb0d059e60fb0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.10.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2cd2877d1f00231a7bd615f21f57a242fd8fecebd2d4894a3ca9097a79909f8d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.10.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "007477f02eb0394331236d69971b5797a5717bb9d2200c5315cd794b704468a8"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
