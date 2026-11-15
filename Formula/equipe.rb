class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.123"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.123/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "6c2080003d553ec96d8efbd51e7b011de90b43ef13ef6d844e2fbed9474cbc0a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.123/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c858bcf83069a20fb91aa225a05326ac56a5749e9a4d7ad44bf7b82665b2f294"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.123/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3034a34f19ddb2626a0c9c79e8e994d4de4b04b064b115bcd087bea57c9f9281"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.123/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d0fb79495f9c139d5e5fd63188ff8ddbaf41989aa0cfbffaa9318daeff48d45e"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
