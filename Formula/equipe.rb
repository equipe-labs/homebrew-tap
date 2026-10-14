class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.13.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "1a77ec7b01be910a02d72117e47d11b524beb0c967ab723dbf223792c5d2a3a9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.13.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c867f12c28b5c9c42f42ab00e532c8e5ea97c933909c6e797a68964880165aa4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.13.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4c679ab569987668f5cc102102c60e2b50a4832785e6f833fbcd384f21a5a7d6"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.13.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "80c9a15feed678f247dc6b4b5329b92edc829d56a5c81027262ad47658925729"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
