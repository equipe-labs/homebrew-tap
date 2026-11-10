class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.76"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.76/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "61f5af91597895426bd511fc5c3fb476988dacbaef6df50ddb9d39a39b8c5278"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.76/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "aa3568526dfc3cc7d4ebaefa935d8a6d120fc20531554a7f461343a81beb1813"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.76/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "06c13df99931b274382757876a125ece085bfccbd1cc3499d270e21773d8a6b9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.76/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0eb8097e21937734c1901cf511c7b5e310a3cdc96997d7824ab8d04db99681a2"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
