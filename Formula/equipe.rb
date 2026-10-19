class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.63.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.63.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "73b2bce869ad53c227dcde79e2c95722b30f627b10dec936867f2b8bf0cc8851"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.63.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "5ec18156ef5797a3e6e18db96f5c67cf4722843953c3fe498ed33a55e40fbf2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.63.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aa1a26c97de82ca923944c7bab58d94632631dba93861e9ad97461819e7a7e7a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.63.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02d74d0a44f7a891386f3239d0ac3d97f16afe1bbd26cc73a7702f3d7e95eb19"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
