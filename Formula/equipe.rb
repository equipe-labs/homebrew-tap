class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.99.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.99.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "a5ac109beb30ab84e44db9bc9a49007c2f7a4aca7e455a7e7f5bd8fd5b8fbb53"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.99.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "b349d8523bbc864db5ac4581839927615bbf4f683558330672cf49977946f4c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.99.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fe653fe9896866419699c4ad14cdda6305f447be4d616a74ba88c23817df5206"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.99.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fb3c86ff5c88a0554c9d1aa0c0fbd0c370b7eea8f5bc05e00363d69ba65de126"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
