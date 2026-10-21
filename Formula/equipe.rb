class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.86.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "4a0629b83e8fe4b9d963ca2f3bc85751d718aacac3b2595f2d50300bdd7738ac"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "87eecc80caea9d5151a74d4ec26a1091c8604c0a245a287285ae2abe6ae19dbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4efb8d5f82107de35400695fb419080aab9996c9ae3e1ad7a5259ae7ef2a4580"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.86.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dbab5534d6757c1f8aabd763fa1e3dc8b213a02c2f8aba63e4b5cb866a6d7dee"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
