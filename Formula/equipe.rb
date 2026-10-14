class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.29.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "c25564bfc21c787b84088890760b21daa87cb5c2adecaca10d735a31e348d910"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.29.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d6d35cfe513ac73f150f246071311699d8fed71e0cb2c6b999bca508d59fcf68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.29.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fa081dd49dece1838466b3a42cb77633614b68f8c040effae7238d239c257cfc"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.29.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb9f0f60d349d98d02f6050bdf6f6ecb34d94102a121b4d45d578bed2fe0c54c"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
