class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.147"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.147/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "1acdec32a744eb8bdd6f7cdb1c6e9bfac053a815ec18ad26794ddc742b751c72"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.147/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c475f29a3a7d7d12fe5b0b5d6f8c65789f10bce6cd3cb67bf0a6b5ff7c7b9a2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.147/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "918253c6c33775d418d3f444d4363153223e735746d26845f2b19f6f7e0fffa8"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.147/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d34366361df0907006905b336f0679d84a369146bbe2d5e300f1189d6c6b76b3"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
