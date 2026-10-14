class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.20.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "08388a1fcb795334851cba6d35cbd39ebf680e10441832d38fdba122e8ccffdb"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.20.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "61cf5bf44ec4aaa41df8a28c4b2c6a388eba8037705b4e8cb305def5887d6c1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.20.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "048cb0457ef8a6d9c6f8dbdd4269e16afbe3517a67e5b1cc70be7cd6a2d8a476"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.20.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb860767c4317d2750072c939c13e4e5c699c4f7c962b6cfb0f473ba6d37e115"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
