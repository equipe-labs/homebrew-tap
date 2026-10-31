class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.100.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.100.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "2a5ac78c35330027c03229ff022759c3a91114fd2d25577d950cd798cc152213"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.100.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "39082df8ea32dbc7e62860f0678740dad16386e6005f41f6302a75a66aa77dea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.100.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a32a7c39034105d9ea414a9575338ac79bbe765b8f793cbe834d5f9c41204474"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.100.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cda1e5b103e8faeda9dc3fe6a73f9b4da2f039c011fe77efe7a6688273fb1c94"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
