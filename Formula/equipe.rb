class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.49/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "27abc8b3307f7b4dd6c6943234e4cdc055ce5fb85932e054b0b874d388ef55a7"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.49/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "587f908149c0ef747991df670cffde7d8db9df4b3ec035d5ed629493b9bc1a7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.49/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "81efe477d0c41339370782935c3d60dc209ce0db91dfbb0ff610e197c86c4395"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.49/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "753660d4bff820065fa41b39b09838e52898fa7d9108ffc76487b9629fdba0c2"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
