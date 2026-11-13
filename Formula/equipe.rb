class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.100"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.100/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "19b33b2a73bba536ffffe32bb2182bc9416b9fbfb67c5f4c4fb7788ef9267977"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.100/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "e69566da83ab33541a36f40129f8aad659f10662a5b4cd1ea86737a85f2c29a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.100/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fa3a62a5e657f44b4d0721150f8cb7202142a2d8116bc0a444d22bbeae1f9030"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.100/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8bc01e510fdd4b68f73f39fa255193df59e117b1b9b618c85d4568583a02f2b2"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
