class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.143"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.143/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "6ddfc70f5ea1046a6c3d79870193f447d870d4dfde23f89ab2b6e54e57354c8e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.143/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4b07a7a354639cae4ad8c562bf62d7643a7cf3abe43d7bc6db5ff5a84782bacb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.143/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6c87328ac89a2cbe8cef93e5ad55f8b94686f37e879908a2c860637e9505f90"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.143/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4edb5c6110a1420f67614520027ceed7ff0b84ae83f7332b942f578a303d9a8a"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
