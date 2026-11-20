class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.152"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.152/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "65dfc13875da2790b7dbb8b056680d56e5a57176e8bf91f6c3367ca6220cbb50"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.152/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4cb6ef35a3681cff9305326e871d6d0865bf154d64c985872dff73608d9108de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.152/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b662f04f261cf3e5386f7f8e9229d9682343ed2fec2819eaebc4c85164de62a2"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.152/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c123a4d42c780583e1f3517e25e8dc3f351200d50ecf3a0161a78274611a0097"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
