class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.80.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.80.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "6c0c93f4a57c90348db4f997ac7f7b16533eada2b33643fe493d4130e3edaef8"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.80.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "3ea0307d5e3115ed8d811db18287acd646e338d657f7ba1799b7157b47fb489c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.80.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5d5cab6bea72289a60ec6843291ba4d73a88c1a8f26f065c7e41eae0ff24aa6c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.80.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9784c6e1316ed3f44bcb9fed5e5a42ea591792121e37d99eeb799720539b2030"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
