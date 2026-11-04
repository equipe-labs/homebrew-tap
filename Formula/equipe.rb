class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.24/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "9bda975c59bea9eebaa6935c53f4d91a5c1cab4265de11037f9e5344d82ea03f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.24/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "29cc7263037ea77301e4fa89ebd53abf15ecc5e5b5c3879fb30fdd1c2db69420"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.24/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5b507d7ab349b8c4ea0bb625fe45bdbf656ec275bf5c694a4e5c2af39724f13b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.24/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8178e71e5d453a4786898c0d72908703b6718d974226644c473fe6310f88815f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
