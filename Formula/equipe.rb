class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.187"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.187/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "8df91192daf4797d3f16c2edef3789f16cef117a19d6f940f70cfe7f7c894282"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.187/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "d071f6d08a26ccde351f87e840f222225d67f9d50436a2c866d087b8970661f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.187/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "56ce2df4287f559e263912c3ae71ab374a0e1c467190b4874f534e7c6cbd2714"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.187/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eed9c797e29c3811c72821cb2db0ccaa4c66a3ba2241c79f0ab4a327cc47cab8"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
