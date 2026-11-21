class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.157"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.157/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "556ce45c70eaa42cd7d8a635ced9f2a00985449f1f06083666f160640d9c805c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.157/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "0dff565068ad85d7acebd64310f3449bc63ff0f7d9cbd526c116377972c4db8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.157/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a5a476c62d50f7943604e8f38948fcf90db636cdb7ad703de01552d17fd35e56"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.157/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2dd7c4a10a7dd2b1c2b345d0c8bcc770a0a61353e27462855d9dc91b065477ae"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
