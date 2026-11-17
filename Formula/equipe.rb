class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.131"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.131/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "5c7d292996041f534b1f91058cf64944ab93ada2ce6ce4ada39a645ccccc4e55"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.131/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "975eadb725a74934ca0f1646a73b7e109159ca2653c04b76989f0cc3383610f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.131/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bc5dc9398d326f6e59070e3487774363a4d1f7824649e7868497b9b779142861"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.131/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eebc41f8fe3f851503537f221e041152642feda8ada070a4d5ab60335f200568"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
