class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.44/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "2e87cfb72e05a04b4c41815d32e2c60ef7be93ca7ee45f6da7a76f1ec6296040"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.44/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "95cdb49260dd2b61fc810cff01b7c8eee88e0d8e258fd0dc3e4652f71db9dfb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.44/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e9ac842920cffd8b579a8653d842c8269969493bc13291285c0febb2ee83571"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.44/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b37b02fa6edbd5284d8da5fa56b71848f15750be18b5c196ef661f0f6ce17906"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
