class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.32.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "6d61df405583ec58ff7c9a05ca76acab5d2a0c625b444cb8ef622ee29aef1929"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.32.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "89129b5d89f0284bd51fdc2ee312a7230a2ef1cbb9a08c228ab2e143261293d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.32.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3502b29ca18efb22069908428c2fa853d6936926e7b9d5acfa708abd2c69274"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.32.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f72f0ea79f5f84169901ef20c7b055094aaef04593721e22808316ed629e4355"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
