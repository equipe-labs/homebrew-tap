class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.195"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.195/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "79deec469d8f0765c0ca2141cd87a818e21aa895a758d3b557cd70e9452dc854"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.195/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "a9319d8503ddd87e0d01b4eebc1eccfc4edb7dc5151cd4ba70b9411fd0f84c8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.195/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b958c5ff83fa2388879e7e61a91419457ffd986cdebbb2cf75e71247a11e8058"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.195/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0553bf29d2db1f3207217b6d6d779143c119663a28ae6bb06880e724cea21b5a"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
