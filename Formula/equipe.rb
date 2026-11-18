class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.141"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.141/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "2d27ad325782747ed16bc5ec72679bf3990ff531e5e0d69b3f82e3e430245905"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.141/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "eddcaf37a0442e778047744c1a8ff1a8d3af460cb78cbfc2070289c1ad1e17b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.141/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b6c31389a72d298956522d75cff5ff391990a47377c9cd1a37237f521397d7a3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.141/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "47355e511b5c94c6610c43ad692d1ded57677530ff6587749ac92ce9b536b29e"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
