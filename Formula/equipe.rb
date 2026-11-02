class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "b5b2d0f12473c3f97c159b7466ea2fb25c06307eb5a470cecf02e18005e9c224"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4ae2d4e9a0e6bc14ccda98da96ed6c748aa47e9c415c25b4a092586f45e22584"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "91202bffeb21f10bec4ccfc1dc6c543861b3444ffdf887a1d03b31b69a0ec1e4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf7a319d1095a9d1a9450750d3846583d1644773f6f6820fdc398e1adea17b77"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
