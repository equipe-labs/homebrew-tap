class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.74"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.74/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "158496d4fb7c804cb40e9e0c4130fba7ad070fc24b9d9ae7b7c36ee0211f5da1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.74/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "2e43874ad6e5a388e3a783ca37da6f6b9b34ca8c709ce1d2207950702ccae828"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.74/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d0844ea2f55b9fccfcab123d4f1ddfc01a0f272b243443fc4ac6ba7709b005e1"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.74/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8e9f6844d75297c681bb2d0c982fe8e457a325425416a964bdf5aa577c5a8dd9"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
