class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.161"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.161/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "dc9bfcfa3a9d9247f7835b38dfd2d1bf31e6909b65623f5fafc0983eedc609a0"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.161/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "55c979fd44e622d4bff525c5ceb734453a74aadcf11ea466f3f5df04ea7c5a9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.161/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5366032c01e7bede2cdf7b81fbb4e7cec3b75fd2acc9ec93ad5ea980b195a03a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.161/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "027ea57bd5c70606134ad0e15b820bca46ba18c3e6d2e3e8094f1c8e139185ee"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
