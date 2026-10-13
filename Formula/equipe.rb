class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.4.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "8721633187a76c045e38b530151a1e222facdb9eb27f634d95450d4e6d418acf"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.4.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "3a0994e912b4a79d868a736485f581ecad445e85f81e64eed23790178723a9ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.4.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92f9f6c3b134e646b31ac6e6ac0e8037f6f27bcac7402de11ed022fea050c5c3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.4.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "385d07db9e9ce1abdf507a470f6131dd952a4f81e3846800f9124c22f89185d2"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
