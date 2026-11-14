class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.118"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.118/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "1de557cad5676b102281149462f459f5c466dc1417e46b82b0e28ab7cf6f696e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.118/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "77b36c4389c667d4c5ca676b4e553a977900a1783408cddf9403f1a6a1412bd0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.118/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e15da79b6c8c486116705b78d00a861faff5ae6d076fcf41adfdfde5ae323e55"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.118/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c148177ea358c5376483ad9da7784c145c203185315085c7b6e6bca2b8920d7b"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
