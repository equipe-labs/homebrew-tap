class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.24.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "b026097298ad46ce006e20d3189223ed5ec814b9927a5cce41707e5d41b41fdd"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "1da825898d1fc6e6c8921e6abfd0f202ea6bf12c367c83a7eb81af457ab5030e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0daf090cedcda89a50a286d7a6a9e6b6261f0c74d79399754d13a8539c89d157"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "416b42851809f33e775805cedcf359a6a33c52e976fcf87c14bc613f66c84766"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
