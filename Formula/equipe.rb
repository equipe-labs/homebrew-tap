class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.28.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "74ae95cb41e98c5a1eca24556e8121fff8788850d89939a77986b95041619200"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.28.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "df9a2768b8896b3f0d8bcda6c273dfde70facb3ea3ee43041ffd1386935b9e8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.28.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a83bdb5bb652e2de08463601e91d76c4e2f109ef1c4dcb6dd4ac6d4dda451659"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.28.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "53eb52c032386ca98e70cf840452fb8e23059aefc3ba7628bc7261b83e60a0ed"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
