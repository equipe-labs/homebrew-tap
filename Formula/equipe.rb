class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.51/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "c360de7cf451e09360bdbaeb673af3e101a63f1812afe2f755b841755b7ec84e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.51/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f53eaa3438cba151e27b92ca93fc44c688f3b7cd7f70e92ce7f3585839d80058"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.51/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6bd1e1bab7355e7d1bb6737cb9ea6fa94eb7d81a8cd994bfcf1b30b3b18736b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.51/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0770ea96b09c219901b7d06b2761cbf640dd863c666ef97a9f876b84a2ec2c3d"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
