class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.101.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.101.2/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "f0db177cb1fb0903ac3ff290882a1b8011399de650e019576d50086530b1513a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.101.2/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "6bb592c9638ebe776118a5a0a235e90c6f0f01035931fcab8f85213c2d50aa16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.101.2/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4778d14cb7d9f8b2aa5776817126578e952d966ccbb519af236c0ee044f6b488"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.101.2/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c00b5a638cf7c5f4c7244adb7c2bce74678bb8929f176a0a1805eef0c9ee1047"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
