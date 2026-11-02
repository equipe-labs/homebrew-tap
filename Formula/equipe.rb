class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "e2fd4f16138b4aa805ca027d9019d7a03292e6917d28de6a2b090c097a5f7c01"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "1944eb53596d11daf3ac1ba8ea83389ede9ef60ecba20ea2122478d5cf6d63c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "998b006a9dba997c4993aa4f4698a1532258f31ec2a693c8ba4478a7c3dd7129"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d735485cb00485e3934f75819ae138c2f6f642dfc6b46b9b9c18edc0d21549ec"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
