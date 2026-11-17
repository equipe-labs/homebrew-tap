class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.134"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.134/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "53f0e77d8fc58f3016838f636b42c2f578e5df3599c711075565ff93b01f4f2e"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.134/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "a3e9bd1f41254d29d60dc25028d9f72cba5ccbbd4bf7b5deaa77bd4f2effe40d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.134/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c06d80a72acbe44dbcb118bb77015720fc09837970db835361cf425d1b97b924"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.134/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc7c588f87ba2eaf61bea09cbcd570359c6a08faf1edddc7b2701af0b0ab3db6"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
