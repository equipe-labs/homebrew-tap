class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.45.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.45.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "29766e92d051d07d061c6ff99bf68673d88b5b54270eda791fd43bc977c914af"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.45.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "de7ca28dd0b4cb6ec5d918815cc166b8f2ffd0a662b6bacc7ece906277d7c629"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.45.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1fb236fd8020fe34b08dad3457440a8b0678f7c7be9d0cfab6bf2c7f69649c92"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.45.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d262410259241812f52dd308f51d70d3691bba1c3ec1377aeef5cc85d8aa5b63"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
