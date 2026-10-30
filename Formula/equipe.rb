class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.91.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.91.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "f4fb08d4726b324c5b1657321a65c8c557029cd87910b1441b32c45a697015fd"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.91.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "cd55a935fd16522a32eeb5387239ae1555e6ee212a6cf7ed76ac59c7dba3f8b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.91.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c583fda490dd2838beb8f31e13800127685e68c511f28aba99a5d6c3dc7c196f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.91.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95f535845320fab925622fd91fcab7a4bb79e5855681e5d8fa6bcad0d366a72c"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
