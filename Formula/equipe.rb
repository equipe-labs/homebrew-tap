class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.85.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.85.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "1e69bfee6b2ab559de4c53771c5c3cbbfcd31f847e8329cfdf4b9d5928db2e94"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.85.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "8d64e48246201dfaf8c8bb1f9479738a8835c3ae5c95ca1f8d0152f9d5f300b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.85.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0d4a4454b01b41d79e4f5c02a41c82b255d25f6dae72858987cb9d0a6fc57830"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.85.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f5091458dff6d21f669f7a2ab512f09adb4a9aa44ef792a1d5f2b67302654717"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
