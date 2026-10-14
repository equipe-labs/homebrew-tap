class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.24.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "595884722c82284751bda03f783d152737fea979ebb380664d91fb4aec379bc5"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "2c78837a222455b5596daa297f65b750f48c8b626ebde4ef3c53d697a7ad7303"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aeb6a4517ddf76fef9e3d7b8ccf96a222964d28cb53a47c2ec5a426568881ba8"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.24.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f354f29deda80ef9e83456dd39f56957551be7080fbbbb1f93a60530156cd898"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
