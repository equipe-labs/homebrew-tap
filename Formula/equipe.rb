class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.188"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.188/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ae7cacfe293f070a3086db24cecae5ff9b2f755e5cada3cb7adf4e8c310c1a96"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.188/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "3ca14ae6f7c34207bb5d1458092c4435fc4a4e8504dd3fecbf457a8d7b1b2d2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.188/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "25e6dddfaa498db26fb62761ab20ecd0ed6df8e897f0c6040b4ba6ac958e4c62"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.188/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "73f50ce73db2b91e24e074c4fd8a0baf775d780b219a895b902615cbc7ebea9a"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
