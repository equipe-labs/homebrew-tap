class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.209"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.209/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "141ff1a1a5a87831e79645cb406a8123fad9dcb1c7e5bd0dba35e73109636dcf"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.209/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4c7ce5a6e7d909ef4e2f1628d72261978e7b42f9b1c3d73faff4c0e07b120ee2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.209/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7d997e3601ea6f43c8dc584326bd75f0c79bc7b7a8770913fd4bff5cb3896965"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.209/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "013ed25c40e675de53a6ffd5973889f6f19ecbaca5e7c7adcd5bb24c98aed29b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
