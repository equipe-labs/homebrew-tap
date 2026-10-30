class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.87.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.4/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "3c99792e5392a5b11d330e981a5a61fc53a41a370a68a0af457090ade8afb8f9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.4/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "775a8e49d99571b0a3b9b9b5ae80fd542794d48526aa040a2f45743d087d6463"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.4/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22959e76414eb151e1be13cd843c7a40b76acc862c3ab4e74ba54c1a541c4c14"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.4/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6635a32373c55ba3ebdc69556c8842f3d000d93a30a86406336c6e45532d3ad1"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
