class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.98"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.98/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "d989abf37fff29d8dc97b68e813134fa879d896745976280e5dd97334764cf14"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.98/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "5fd1f065ae8539d91ec20dfacfb3a3ed5102c59f6373290c1d48473d56924cfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.98/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8814158d8edc2cfc8c893fdb85772e3a14dabe0fc53d0b48fcaeb8ecdb82d389"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.98/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2f9d6f51e032d8715481248e9f94c9fe1a5bd31c637e5b6b7611d1740e4ff407"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
