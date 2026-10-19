class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.69.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.69.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "54e8139e499007e6cb862e2c2861fc4cf393e4c278005c7edf5483c50dd333fb"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.69.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "39012c4234d45813c741127acb4e56f255bb7069381e6a8c1f4cf8fdc3f7a9cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.69.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "355e670e1de283527c351a0c49cfe81c0a7e163b42ba2e1dba3987601da1e02b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.69.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fdd661f1a0dcd34f09eae6abe79e585c10c1772711be9f41d7d544219ecf7c39"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
