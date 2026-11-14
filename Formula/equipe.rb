class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.113"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.113/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "cdc1a2e60fa302697533ba9bbf1ad9ba1fa97b7e319a6724f8349a757c928357"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.113/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "96def31d096ab077dacbe2d36594d5f52be1ef9518aabd47022f82975ed57a09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.113/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e05ee61c17bdb7984ebec3b0d44776b5e107f147188f6be6dfd373ea1c8bcd9f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.113/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d185700b7a254236908bcbe3da81a0544968012ef14ba3a35e672b95927ebacc"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
