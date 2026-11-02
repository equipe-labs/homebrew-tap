class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.4/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "e4532eb895754d001df65622e50fd9236c8fa83928ba7f61fbb40a9e552308c9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.4/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f125e12032be351d66352561761a3839f97f32bf118f735c0ec5808deea60dbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.4/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a44a2f786832b09547f1dddd45ba2ac68fe66de72656ba7a8f8cbba33334a368"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.4/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c12bb7194114aea5b09529cfa28e7ba6d1b253009aef39fbb906a0546bff4360"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
