class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.60.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.3/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "5352ada6acee5b8e8063510ee492a6e26ccf392f96a0658edeb007630a7c27a3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.3/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "1cf5dcc2fc3c166730271f9bb2071ff22f3fecb909e98a0e02c90090794e8897"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.3/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb53ebcaf2019edaa5395d289aa6e08f854fc950d634bed1b56e71e50fbd176b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.60.3/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8edde6ad6c3cf5eee99bfdea1c995ee48e46ff277cb7db280efb3d36e322d7a8"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
