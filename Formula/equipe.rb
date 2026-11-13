class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.105"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.105/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "aef73981ccbecf7f86708abf2e0d7dc462ae000f6eaf35a3cc02bb8ff8fb9db7"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.105/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "e6a58c0204cf01e3eff103a85da929a6624a9e43ae4ff605d46bb5ad273abbe0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.105/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "88dbcab113e389d47f548dda21a803fdef7c6f9b94b034b3c881cf9437fc3897"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.105/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "afd99dc6f7ef3cc0a1c5b2003fcc8be901ac8fd0ee54aef97fb07b31cde238f1"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
