class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.57.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.57.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "6958e8d2f4f8b11c66b7857806194f9cb646b00dcbfd796f5369edff8791fe8b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.57.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "01a75af5a87ed5f8526cad5efe88ae45f120f8abcd78d07c1d138f7c72845b0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.57.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "18bdec9048d576bd2d7382d03ce1fa6491dff9737c89585c5ec8df2e69b01e11"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.57.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a5421185c05c957077c90671aad25e4be6f3fc21d2cab8eede736a6cc53aedd"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
