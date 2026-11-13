class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.109"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.109/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "864bcafefe989a06b1ea97d6d9499a59f57209d29f3288ebf27fc2bf6c9534cf"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.109/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "ca71c535d8f370493f0a1029292694e3ed887d7abf055f05c3e4b964356e87c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.109/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7afc6940097c2cbe3404412012a41f43ddaeb2578fed194909071a40419d7b02"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.109/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "db89dab477ce3bcd85c9e177f549f52289ce9570019c2e87a9a66055878767d9"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
