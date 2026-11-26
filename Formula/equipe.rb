class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.192"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.192/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "983f7193773ca60c548f08b200588657782a76f0c378435924a5f6d97c1eb839"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.192/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "8c8b51afc17cf8c4b7b8eeb1b203fe41a0c7b9832ced680ee7e1792cca6b6bb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.192/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c7e400f04d3f98d2d439a7b64e73965a2c5003b6985cc9475bfd14dca66cddbe"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.192/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "13d580e8eab35ffd5b85e9c4919d36877d6d9b41034bd96477894974ba4026c2"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
