class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.85.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.85.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "78d99973df353498391d0b8ae4bae9b7aeb76a14b0535180ce20d0b99ba7c7a4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.85.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "6a153c7916499e217e24f240cb6da076c3b33791c6ce9619d5c4ed43068365d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.85.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "49ceea5c910e8b4680b7a938d50c3d38db7f955d622990b8627d75c6dae3563f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.85.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5b7a2a81a470eb34e4f85a81f716f1c7eb7e0e57b5cd4e43323f9b97d9bf4cb0"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
