class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.129"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.129/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7d65789971a52346d238f5afc7afa069df2aaabd4e79f7a406b3ff8118832993"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.129/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "3f7f848c4b77aa9fe659a35f4e876e960beecb4a1229bd2ea38292e499db7615"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.129/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "71e9d9ca86bd58bf9650085d06fa3aa1ee63015947586c9ecac0a9a58db5963f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.129/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c4f946d6abc967bdc62b8f4eb69ddadc573e85e88f2d4677d91846d890068a89"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
