class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.142"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.142/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "48bc3c70b9a3b6948a6ca43802338c8338af20c5e4f20c506ce7f4c2441608c4"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.142/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "607105e3e3b5fe42b4546463d2e0ff75841dd2fbd99deed3030ec7afc80353f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.142/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bf496c318f203567d1382c8cc8883ea3b63352b4fea0743bffd73911a6e0c924"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.142/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "704253480a0f72ea3d7cd9ccdff190585d8bfc0a10e8a138005870b2b1aec329"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
