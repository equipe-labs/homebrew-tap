class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.63"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.63/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "a04cf08a6d58b7d1eaf5a1875eb5f036d2c44abb8512c665793ca99e3056ff78"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.63/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f4df8d44e2459ebc7f98528a048aa393c9eca0ea22c098393d387b3860e5e047"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.63/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "26f8f1ad94c012ee4c882801f5024d83441e5b70c95cd0ed093620dc6eaaa7cd"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.63/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb134b499c1310c76a409a59bd626ef93a225db4135cff07d59cfc90f141acf6"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
