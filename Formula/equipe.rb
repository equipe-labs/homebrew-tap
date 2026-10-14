class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.26.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.26.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "9a0bab13c12bdb0c43ede994bbcd5557bc746a8fbc329989bb564c6f0ca5ab77"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.26.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "fd557450392847528e393d62b0c4c6da40a447d0029009ad42aa025e38e2dd72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.26.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1ffee3d39d05b84cf5cffe485172d12c8021d917ca65f2343295b873a195f7d4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.26.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e20b3a642b9713c22a83bcdbd6b0f2738dad8409153bb1c9d68404152746326a"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
