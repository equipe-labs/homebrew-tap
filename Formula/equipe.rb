class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.96"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.96/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "41e8d30432394cae2c793061623e449d924d878840cad65fbc2354ba2e0703bf"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.96/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "67a9b55f866b343c7e1ce7354f7b56cea15878d1cf6b7c0d3608bc44d6e71b41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.96/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2df39f4c1e910c18fa620235551de6f1ac314d1eb6a6f2d83c96614b593cc32b"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.96/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "88d6d4f9c8bbc008fe5242aaf3c00d68afcebc7303c62703245568d01a4a88e0"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
