class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "6a3f8f423666970516037af3e108581227b3a887c74e5de27bd7e8cdfd8edcb5"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "157fe8091d2016f478e77529823b5f3151e70eb3c5dab285c3f2d9056fee3fff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8c18e94bc1e074b4b193c98506ab5c039a35cb6abc1029eaf54b7f33d451b552"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.23.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cfe0ab1aa993d518f9983da909ba75b2fe6a51090fc14e3049090bc05384fd32"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
