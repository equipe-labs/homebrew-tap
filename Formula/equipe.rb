class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.38.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "e866021cccc8f1bc6debdad98033698f53c397763f2f01666b5a74b134ecd93a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.38.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "86f90ffed7e8156077537dcfc4a1ab6d845a46da661f5ce188c53770d1b2435f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.38.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ef1a173e8bf034a02c8bb8e249b5b3ea820f4bf2a50012619e4602cecf9c1235"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.38.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "93381ebcdbd614f545d6ec15de229c83266402c6b4c03a7f456a939ef670166d"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
