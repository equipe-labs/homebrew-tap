class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.39/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "4877bbd11e8de3f23376697fc577f0899b1e28d4de30305080e5b95e7af660ea"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.39/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "39aff28220d66be5b14bafb42abbe46248a913e47a0d7fa204517adbe85f8440"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.39/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6ff89b86d47136fa832d3f5eeafd50c276dfd5ec782c5c057f474fb56d0ecfa"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.39/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d2fb8600152378ea3f2b94bf7286b6e7d23e9116d5da9eb3fda7e81787c423cb"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
