class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7c5a35930ccb879f00d73b727c13126ff69f8299b38e43b653f5f4c7e29838d9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "24829ce7411b48d0e283edcd9a4e828b976e9b29d8e725d18281a2d269f078f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "909e63bdbf34df0cfc290d0dbc0655cff4553a2af1927a119ead90e9fb6c7c25"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.9.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "176ddab3aa8da7bcfb3790d583b3483ca0a5a418a3048c9b1cdac873fd5b17d8"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
