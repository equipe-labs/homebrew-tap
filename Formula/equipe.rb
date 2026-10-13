class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.5.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "f68abc67943d6fd5c2a897d4d4e4824b86da00536ddf48e7f6f9466b37efdadd"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.5.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "9a81d306404d8bfc9e5470175f6d0c150aa0477398198714f94aae4b2060cf7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.5.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c94cacade6dc8f36d9cbb1be11a08319b6021d59e7681537d47c791ac64b74c6"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.5.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b0e0c98df17a6263f5408e0a51b96ac90cfef9f900256446d1e2581a00fb9716"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
