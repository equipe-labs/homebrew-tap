class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.190"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.190/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ef8d04e0bc9cb0d72977ab1362a580d78c774da395878a4e95e23f5e7c20f645"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.190/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "36ecfd74daddd687c768070b9d0c14be775af878cad983399e8f6744d0c285e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.190/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f2e97b593dcce1d51e61309d3697b51075f4e79c179978484e21db242b88bad2"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.190/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "49954c7e37a8322af2a391fc1cb79a05acc84bfae26a4c78394b8652fcecc8d5"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
