class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.121"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.121/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "8afbc348f555eb1601d8ae081f5ff317ab223d4a9314b6ad768d8147a53fe435"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.121/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "1db4fb4ee2023037d82dc75ac3ecd02faa2727beb0431b5766ad4ed543c57199"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.121/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1484532f87b832bdcb47e6e00bf3f3ea74b207f65df786249e6f2f88c1164050"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.121/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c61b3a3bc9dd98a6b7f21c7378987f6e3200cbdd7f7d5bd7fe793c71f4626ea2"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
