class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.212"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.212/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "83818080444e1c658b35dfd5ea9a03b17d4388768f43eb4745cee5ee78bb5c51"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.212/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "1519f199c8bbaf1782d6fa2658bd7be21f34c40721d8767087dc7e64ec59ad2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.212/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7f462579ec83c94c2d3baad117cb2a05ff609fd5cdd020c1d98615eadf906a67"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.212/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "76d82bc34d49295d14284a2da36a13ea2e5360ed3308d7f8eaa3f200f0a76848"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
