class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.40/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "9fbcd9fd5a5085d0a7384c855e4baf5457342118e40cc7822cd951798e5b63d3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.40/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "681034e8d68f40d3330aab6294f91aaa1cbeeb312bbf2af0fe8b94c3b58f5209"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.40/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8f834388e6cc39dea7230576f06085b6c874c9bb8cd818721c6ae9eb4d1b242a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.40/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "65957c4771fa7503dd632be038d11ab17a101a6b3254361851d57aeda3c671c4"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
