class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.54.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.54.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "2c048f57ee054eb1b949ebec7795935d714d52e8ccb1ad09379c486a0fff824c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.54.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c985617214fee45f7a15b61a8536d8ba8d03a0e1adb5cfd04243442eaf2d2b4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.54.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dcae265c4ab30eb1e084be3da4a137780fd555145b32597a03b8d1b7fddc95b1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.54.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7a94feccf2f47dffb8174bf063cfc39ed6baa87483d35d158959e42fd020395"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
