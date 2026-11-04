class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.35/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "8fc764744ac02125aaa92d140fe25691eb9646a6a45ca18ebd33f999dccfdd22"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.35/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "0541648de93df5f97f0517d04ae9212329c97124c81bf6ed266aa6195f51b368"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.35/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "084deaee8687da133c20bbea4d58e564b19cf270c747b50015e33178f98f7f8c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.35/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74d35e9d75336693f7a0b3ae4454c5986cf14a6a0358ab0763ba762810209339"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
