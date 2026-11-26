class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.183"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.183/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "5de594f9367921ef4e50d108fa597ae9d9709392d6537742efad852c39a88816"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.183/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "2ec9c8dde0e6422e2d42f4e1c26ce10aade712dc3b348abb022d4a85a6424f90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.183/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "23d2b57b7ba84020ba23d594e48972cfb44b46dc6239c716db61a17a5feb7106"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.183/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b4b77d1e83d79858ca95c8a8fc3239658b92e4dc49b9fe1cb3d25bdf50df3eb"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
