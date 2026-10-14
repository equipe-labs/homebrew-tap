class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.15.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "4f21357239a92ea2fb56dfb646651bcffdf5d1333aec285be5f982486ef9735c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.15.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "63bd2746a6e40ab6385e2f54d84692dcaf73e2ddc7910836eba800c46bf92f16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.15.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d2687adfbcafa7448fc99bdfcc4b5a5df6b0da78018725c713efae9fbfabc26d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.15.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ebaa03389150ff41c64f0c288746502fb98f7b158441b02b57f7af304e51e7d"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
