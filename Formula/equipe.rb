class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.79"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.79/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ccb2ac8a599f0023d19d36c252ccd4dbe461945898d743288fcddbf8710b236b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.79/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "94590554eb9687a17932ad66751e2f5648a05440f1a081a1ec576178ef379103"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.79/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "86d89e955ed5b18793f920266feaa690230447faef135cb1215e47101ee26303"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.79/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b7d3e23fc8c1d96632423adea2cfeabdb50763f86edc00cef593dd7ffcf3c229"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
