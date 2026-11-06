class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.52/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "359ab5108268c5b04cbf47a18e25de4750201b1ad4f7525e659c16a5a209b9c1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.52/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "a404a6be25b8d2b72c35c4af1f8a018a6e3b672f9e3ce3b4eedeb879d486268f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.52/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7396b58240648e2511899b7f8da3611d2356e2cbc2e49bf02b5c9274f5f871cc"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.52/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "542e97619e36cb76b8d7855deb89e49547faa49a1f4d36ab95f98b3b974a278c"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
