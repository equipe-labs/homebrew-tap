class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.76.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.76.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "3f7ddfd16d3f1651eb20ea001e228792ee40a2f43d871e0e6db458bfef37e748"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.76.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c26a40bc66bba05c2ffa64456d7956fa463116ee3e8ff27df8aaeb5333f01b3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.76.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d62aa9a1984781c7f61cabdf301989e11e1eecd493504e22df14161adca26aee"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.76.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d7280acbee89d7b9ab66505e329eae63f8b245c2e1654001b44c39554b71a5e0"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
