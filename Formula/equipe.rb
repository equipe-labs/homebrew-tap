class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.101"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.101/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "64c49218f30a85ea6c1809a6de559e5dbe41cc9923d2ee458d9a42b18f1afc79"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.101/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "882140a878d574258fa7fc05b78604f6a8692cb4df35f0e5ce1851ff6f2522c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.101/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f859e68bc7aaccc4db2c3aec4930f1c145310a4fb07b81ca83e2491c47c5a354"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.101/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9e109f7500eef312946ad9fe331f32c28f412f701037c95bd627e707efcf333f"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
