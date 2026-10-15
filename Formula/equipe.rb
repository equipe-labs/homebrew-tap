class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.47.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.47.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "0dbe605dac46aff4fb0132718e35dbd0d9c8dc88bdd2015eacd5082e31e6f362"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.47.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4742b3a21b8150f7e7483eb41660fa046bd4a905adb88d4bf86708acb2a07767"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.47.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "06e3641615de281a83c3289e72e025cfe153e3d1bedb1a743c38d598d6ea032b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.47.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a53ae30cac78b7cfd3e3b83014693d96654fb5314f3024f72da9bd765423aec4"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
