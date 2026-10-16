class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.47.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.47.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "1666afe2a6c5a9ef15b1b4f522585746d027a4e8d480d8bb87f91d50be564c99"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.47.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "b97cbec6233f8cd3bf6e22ad54c5a5ab5574822661a59dc462332a61c8408531"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.47.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "82fb505c97ffd398dbce883a97cfb67e90bcd8cb4bc55fd7d3321ec9fd1afb67"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.47.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9f653abde61ab32af0dcb97a84ef3877868a8432c03b6be2224d57764ca8ee29"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
