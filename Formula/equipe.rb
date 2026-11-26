class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.184"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.184/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "9d250aa9553c103831265273c1608075a65da84904f4cc42679ae733d0edd7aa"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.184/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "ff7929571e9ee55a6472bf9a6509921c1dd473be1048f2a76eac1713e33d92f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.184/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9cad71c58cac9ea085a76b32674fa0bb46e6cf8311c3689cd213fb1b8fab8a89"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.184/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3b96e1214e0d6bbf59e620d7ffd45608d1f9d0990f5229dc3531faaeeccd7793"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
