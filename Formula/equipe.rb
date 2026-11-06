class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.59"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.59/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "d964a82a93d747aa018746596ffeae15201296c416059701ca1c6845f8601b70"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.59/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "0bf17072c2b4bdf805c171afc5e5eaf56d4023119cf3f1b99c311cef4a49390e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.59/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e1abf4b5b907ee578d2aeb3b604997aa4a37846ba881acbc6b3c761362c0139d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.59/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fcfe92eb257915b690d58cdae094f37291ae3510ab6ceeaa5bec8259b54d0786"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
