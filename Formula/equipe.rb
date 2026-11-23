class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.166"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.166/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "ebbffd73a88e1ae763786855c7050e797f6e5114647d3c7300db0f041386d2c4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.166/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "e28b07aaf88dab6e8855e13abb8c8a5d41db2bae458717a2778be2afc23d19c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.166/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e20c8031ea4d60eaf77e5ddccf0312d4ff30fbb536561b998dcf9c6ee6d26cd9"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.166/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b5cbf5a00221ea07cff77725981c95518ca3f5137fba464db6d34aaddd11ca7d"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
