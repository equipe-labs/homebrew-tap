class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.13/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "53c9fe12d4b327887d87251f0e362aca4d0e8e9371d50996bca6a30d0c185f86"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.13/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "5fb5e357f62cace720c557cef9fe67e48830e15f9db3a7cb14f49bc4039b10e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.13/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "55798298729db58c3a3aa3be2077ffb6d7fc753221a795ef4b3f8d3955b7a2d3"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.13/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a39eea1b36fb3d7b01a4e5621c9c95ac748fdff5ebe979a6406295b7c1cb2676"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
