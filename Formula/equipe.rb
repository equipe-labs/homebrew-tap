class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.148"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.148/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ea355acc3bef48bc2f8c9c03e65c177a5941ea022a129a266976960dac5501c2"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.148/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "67b2ec49b238bb79c0ea7fa1d9689b414c51c3f4d16a0564d0e11d557a4f11ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.148/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6718951a102c464d408e585cadeb9e281af727042e11529fb0e4f2b98dcf5d8"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.148/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1d5f3e025180d4e5ce478b92ebf7a1c3cfc50669f3f7d8f6989fe1198be46987"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
