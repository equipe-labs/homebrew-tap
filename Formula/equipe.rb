class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.30/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "86d91731c04231537d5ba63772b2b5d33dbc61fe91273574a61a7e6a78dec84d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.30/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "ffae3b9c6ab87a43d7e48f93a25cdc20152fd7899a78a5b867faee84214f893c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.30/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3f1ed90b94cf47cb01f3fd15359cf9764015e1cf9cd31e081c6550415371305f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.30/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0e69448596c14bc7de5a8b24e26cc14b09113faaf9cbbea189610952c4ca3211"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
