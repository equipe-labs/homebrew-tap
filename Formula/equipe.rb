class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.87.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.3/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "cfcdad6194143bed1fea172f3621c38f592f6875e4deff418b27495e8ebf9ed0"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.3/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "be6b4b756140e90822d494bafa75420a6708d5d45cceb822e42aa9443b876b6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.3/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee9b979f45ecaa5f2f120de77e01faf510cdc7284cc2e74aa72734f55217b776"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.87.3/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d7d81f1ea1432244c7170d17daa432f7aa4f2abff97408f80e77c73f62a9d260"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
