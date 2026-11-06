class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.45/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "460b072f293af6702007da807b46c85d03c77eb5b255459978b97cec47c85014"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.45/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "29267842c911d1f842c104b704e9c14c5fc4fc6247982c6e671235ce08bf06c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.45/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "59db8d0483dfeacf86329ee90031183fdc5524c99c857777bafffbb0a8a28fe0"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.45/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3aaa7523a147eb1c513efd1eb357b5f48047fa63c9c57526100dd42e8d8d5dbb"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
