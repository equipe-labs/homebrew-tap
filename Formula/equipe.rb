class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.26.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ad824cf3709f70c14910cb04985a43fbb9cef793e858d01c9d9b4bea174d3317"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.26.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "0641dff74b07c4ba267eb89c5ce7cf57c1a8d45843ce7cb56d58579e63e8216b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.26.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5feb7c06bee551c6f606b0f12ea74b47286d05ea1720cb87c70d706c17d2f116"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.26.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7714fea8d659993070fd017f085deb71116b78205a931320aebe9d04aa4eb7af"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
