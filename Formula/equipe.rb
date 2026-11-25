class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.181"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.181/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "2484a620965f818dc4df4dc3fb2c7e5b026ea8e1ab0911f795a5c511f2c3dda5"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.181/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "097eae8b3d56e0d058cec676df6decf12e068092cd12981e20c8cc6497fd5f8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.181/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1710e17485ea08f37f519e949d4acbf109d3647eb3ffe8ee71a074ca1c7047cf"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.181/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "64ed1f3689662d1e5b54b869e89da3e802f7a561562fd0afb927a4d1f8c22e5c"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
