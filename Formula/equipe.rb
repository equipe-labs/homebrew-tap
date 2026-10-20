class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.77.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.3/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "1e8fc59846c4ccd91a7c0d693a0b0862256cb535b5df56edfd118ef673db5336"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.3/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "819adb4a884d5983e1871184d6df143bc0efdb43562d2222e20b761062546cc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.3/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "575c820b017ac4e1237fb074d49c40831bafcc356d4516b6fa8d487d2832ff02"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.77.3/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b3591582068044748777760bd7e96be8b60df3ca1cf12e3aa9a4007d0230183b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
