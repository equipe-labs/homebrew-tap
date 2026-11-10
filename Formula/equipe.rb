class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.75"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.75/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "51ca44952e518db5384d71d0b7ed3df41bc21afa3017700b8da4791153c42705"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.75/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "bd9207f8590c75fbd862e610da027746d8e9c4251d7f5b55a41a790cede32e82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.75/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "08f154f59868f3489af00b1d9ca8ce8ff45d7dc5fdaebe548f85c94219751a50"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.75/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0dd9b08d97f08b6a5dc98d9d39c9859aa63794c79a268973fa7b8947fa35451b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
