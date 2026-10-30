class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.86.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.5/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "849b55bf47e3c0843ebf5b66534806b6130079fbe3d8e9c215c5f91e4cde1289"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.5/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "560af3d26b4ef03ef4262436c3fc285fbcdcfc5bc3eb4e8da9172a47f200d0eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.5/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1f8c02a45772a6ce23b91c2ed4785ee8b012cedb9a4d8ad23b9acfb354771010"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.5/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ad962324aee4ed42dcb2c3a00329f6fad736d7e686bb49ffc77a6757975a5cf9"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
