class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.168"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.168/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "766ab8cf22fc0d93c1f72c0042e6d9398d11c339406a3bf8c263af96af1643c2"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.168/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "9af1e584b644d69eac4fca8d0c623b2c6dc91332442c937144bd8d1ed9563683"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.168/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5266b624073142f488735659085b40e7f5027881c4284bc8912a0f26c445daea"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.168/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dc121d03c94b48164d654dc4ccb45c0d49b32ad770713c10c769e2b395ede57b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
