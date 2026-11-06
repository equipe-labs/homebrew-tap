class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.50/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "869bbe2456f70841c31b4eb3c867228e2e4d59735f17286e5a1420af483cf854"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.50/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "41ab6687b3f7bad1e6acf11658e80286fc5e5cadaa1e619cee93d051f8cd4a09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.50/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cddaa258a5986d42dfc5dd72ece9438d3fe54ed397b86b938f5287c17e3091bb"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.50/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6cf66497b4d7f22d5170795fc7702e9176e5cacda59e7e58447e2b64a8b6c012"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
