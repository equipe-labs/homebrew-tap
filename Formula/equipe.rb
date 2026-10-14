class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.24.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.3/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "e6b466d850ba6272e6356799b77652b1fcad86ab1f6e3f82dd2832b258ec7b13"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.3/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d6a6906de320c14999d3252217086ad370e76bc63c3e326fc2139b12e2f7c8d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.3/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fa79e2a38eaeb0ae0fe0175271cb4c19b19088e33625a9af808fd0e4187f4d51"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.3/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "032e7eb34772a1a0896c3a0b2ff3943ef55a78e977847307761d3dfb76875ff1"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
