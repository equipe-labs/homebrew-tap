class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.21.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "a6ba83590064781e7131a984a677386d780389223fde4f54971fee5eaec8c998"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.21.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f9195840c9d01d56984e12d89b56b1cae56e71d21600b6d6d1d8e81ccaf1c909"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.21.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5346ef913a3776607ca669c2c995ae6df2620e26ac96f45f84c9c6c61ee38b31"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.21.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ed7cfdb72ca239bd72432fc16dc37307cc0652fda55d340739570a4097b94e24"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
