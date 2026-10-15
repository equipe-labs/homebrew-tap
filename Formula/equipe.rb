class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.36.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "8858d6b57524c946aa9ef7a1f673606eacd1b5a80c5ac98e58ceb1a30e1b4c43"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.36.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "bd1ec1411648c2248e13ea56301c5dfde73ec7d439ef61524698d70e0d8e8abc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.36.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "60185c8cc8aef284d0ff4e60549c2487673b9a0842b7c90900b60baa9887917c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.36.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ada1472b43ea46561993dce424b35594caccda6f55d16e2e693d228df95bb7fe"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
