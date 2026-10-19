class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.71.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.71.3/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "05c897cd7f20d38c172a36529eff0fbb91d3556195cb6539973d8a0baccd6b65"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.71.3/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "41896cb0ea20b44eddec8a0711b85b778a6d7bafa5621e9e6896dd2a6d7738fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.71.3/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ce8ef9ba2975da5d0dce9e0dd6f31715bc1c8988463bc89d5b047f618aed1f3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.71.3/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c60f85a7dd5a87282597b522a3c1d048018e5e5fadfa523e3fca6149be6072f9"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
