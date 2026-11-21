class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.155"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.155/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "d5527da595b3adcdafa2803cd3f3aace09fff357d821c08d47d56ec81d217bba"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.155/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "e78733ec1f2b623c75c3f45a6279e97d639066b5d71d65e4337ea6b23ae2398c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.155/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3e9b9d5732b4fb5ccf287572a80695133edcc2aa5fd3a857ab06cd292d0b7ac7"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.155/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ad0fd155ad843ceec63e94c24c53d26669c4473d15efe49f291edbe681a84650"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
