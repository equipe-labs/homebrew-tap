class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.61.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.61.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "baab1088bb3ae56eac4ec52925cfbdbe3e15195aaee4952cf9d3d02b6cafe0cd"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.61.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "ab8de4944b5bfd504ddec5d0883576c189329abaafa9162e13d02d7639b3dac9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.61.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "378990e59cefa8b06b16421c61e469f7e90c208dac3b1b1c38e455e32bf67319"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.61.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2f13b205a4740db887ba66b02d397282b9d5e90749b05f3677986644d16d7f29"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
