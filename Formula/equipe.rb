class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.207"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.207/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "c7394fbc697e1989e9ca1ea505a7b9f22588a234aa179d1fafcdd64aa28d03ae"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.207/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "6fb5e1cccdb86ef1abc7906f788177b3471b6d076826210c551eb825da7d5367"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.207/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "50d975b3670310b94df1462220900bd37631db32ffbf0d40a9faca493383a7e9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.207/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a13e4eb4187b662e03feffea152f5c3841d619c0158c27d9405a61ef6f88674"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
