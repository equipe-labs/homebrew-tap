class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.198"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.198/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "e30a92ab7b1f70b7a432594f936f45a8ee4ba6d52c45389991bde812aa00a472"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.198/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "09431e8f856b6bd9752f0f983a350961586dbbe9714ef103113149fb3cf49fdc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.198/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ddd50aabca34c3117a36818ce4db98db4d251d278d1773bc749301182b9c77e4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.198/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b3fb3d4e88e6117bb5464e4522fb12f17ca615746d5e0441778c3c24f22cfba5"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
