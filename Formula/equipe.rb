class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.173"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.173/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "eb6e0b8d20a6054ff9273eb6d1c01bea172f258d74d1279c071d809c8bc5b540"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.173/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "0f0d93cea4b1a1184998727930f2396ea4bbb8bc1448ebb33e698984f23f27cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.173/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5bf56417efe32341de52a4dc640543f31e8aa698a315229a41ba2f96c4da69af"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.173/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f0528a5539bea96595717ff331fe5ba6cf076d892d041366d8fa8de5a2b6cc1"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
