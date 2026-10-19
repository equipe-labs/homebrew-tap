class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.77.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "533c7cbc7fc94a10a88aebc5a8ae081b6f9edc564f4e789fbd8a0fe933f01ae1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "2849f54aa589c1f0984c5d3b97c001b71f5a18ada7d42f4c04de935c394d98ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b99629913d5e3a1c2aba7a5d3e47196ceb81541306361ecf96ebebde24fbe652"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7f3beb293429cf2a0090c0be74aaccefb2b0b83693d640dc69939ffcf5f3320"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
