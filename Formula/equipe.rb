class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.7/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "a37bf34177fec6a3d23dd0c55646dfd8395f1d0f75d66abdb4ed7bd94fd78873"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.7/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "35e9362113bfc26300396afc98629ea2bebeaf93bd27b5c0063bfe1609e24d05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.7/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e99926f0d5ea5a3129da2ee2f4f46fc0c999f07f044389e6becb3d5b4ab8ef0"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.7/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7f561d14e4529a9b4e4150f4e9ff92b02f85bfd57804b61f542996e7ba87f0c8"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
