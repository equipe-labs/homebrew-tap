class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.64"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.64/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "36346e8af9401bf2884d0cf45ce6efdc3203b788b4002ff34592596f99309223"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.64/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d835d2ff5cee3c5642753fa0d48c9ac11f5551094133a4e09e7eb65f849f5819"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.64/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fedcb3e03d5bd014fc48675a0a21fbbb4a7b452f554a1a653839a09be23e9706"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.64/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f6ac6ebc54cd1f2baf92e83a8eec29ec2d625962b75cc0d1025279b7f6b67df"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
