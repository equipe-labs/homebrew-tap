class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.77.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ceff5485e47e1a75e6ea60115f3daf77fa493308a3856c3308e8d0d0c90cd209"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "47b5576e8342569038339a26d68c67ec54af3f5846448bbe8877d7c46921d29a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bda03ccedd0a3484086dd7a5a9057567aaa2042d233500b8dc8c307b3e8aae47"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df74bf89a3030df9dcbfa24a0b331f8e3fb62709dd9261eee9dc3537af7e8fd1"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
