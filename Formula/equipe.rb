class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.97"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.97/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "57270ca7953a311f0f37949f460639cb92766064da3b5a6625b9af6e65357208"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.97/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c0a07de4d2b7b2a1572a603b8cb86485f084c191e4c3e646dec7427e0070dfbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.97/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee334c312d1d330c3dc4e87fd00431665b167ccec849a619221b886978b6cb90"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.97/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b137183fd8ecbc2e486b8ec16a8d3dd80f20cdcc8d3a72fb23294eabfeb936a7"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
