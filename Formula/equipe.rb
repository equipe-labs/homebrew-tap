class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.60.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "a0f110c7eca416f21d9de72409e80345b44d56e720da809a29c326961e77deca"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "3fc402d1aea8d401416e6d359385aef6337f3b7f6fc3bfd6d8df270ffb63d55d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1431ab9337c1758d10ab0c0dc59e3b97ee02d9a9315439097603bbab1bd4d67f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "050cf950b6694440530fb088ae5fcf3765f47cc6da3511f31fb617da9a42680e"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
