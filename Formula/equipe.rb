class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.90"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.90/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "fbb46fe6cd3d143bca63358e3cdbc8891f840c8bb2c0934a58af18cd9076fa53"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.90/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "016b8957867441443bbb512f04eb24b3b6309c7d0f64e23b39ca86a4ef8754b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.90/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd67cdee6875b8707b237cf2a10e1b433fd271994f6b2745ba1e707d1564b8a7"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.90/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b44bd350eec9c71626a369570c247c76553827d3dd3717a4b6d58176cb0b5b02"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
