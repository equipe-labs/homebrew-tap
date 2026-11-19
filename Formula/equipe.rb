class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.149"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.149/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "97661e99d3371b43115f27d9bac3cea30be05056fc08373439eeaff12cf006ce"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.149/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "7766518dc1b323121f927f3872c0cba251a8e5434f733761f1b9259b181857aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.149/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b62d71f031e0a93543eff83b6a31aef2388459ffbdd22e397d03323d1f286a39"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.149/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "335c3821e7576ea48d6ee37d573ecf85ee4f5eee77f78f44ba116189a935cddb"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
