class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.100.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.100.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "67d0cbf5448a4fdff723393a5589bc429d82935fc113c5908bc84b2f2406c9b2"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.100.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4f3fbeb85b4e9902fd31594eee7d442b6d41cb0a62cccc1bb27594544cbe2b59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.100.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2a36117972d872429e35f098fd22d4da707ce5d81b5983bab4eebd477d73b01e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.100.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c1a4da2c37ca7fc1321c840ae85b6e0e616124e5d4e83a9c018a840903c98db0"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
