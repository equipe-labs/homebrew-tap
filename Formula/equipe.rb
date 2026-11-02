class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.6/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "4ce70aaa8397af6374729ba057214a32de031f7b3085bbaf91d9d81e1ae69a9c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.6/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "e49b3e009234243e6ab6c858e38170441787a866b786ba7e156076d286db2f30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.6/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "82e3458771d08bf3c52c6d690ba9589e7396f1e7aecfbe2fcba81212619abc9f"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.6/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0802a14dd8162168cc4f2143c966942be5d5665e00c9bd7955baa133d1c2ac42"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
