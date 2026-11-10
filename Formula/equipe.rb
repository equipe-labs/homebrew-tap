class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.77"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.77/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "3c64775487d54d221eb39bb48aa2c34331ada14bf5e5624a9b5beb7a53c0ae97"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.77/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "0f4087bb551c390623b04f6ed89038872f374d8b2029915bd3704383fe061dde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.77/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54a99894355a587c26dcdfbcbe01ba0752811b64f8777bade97c24c3c4018824"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.77/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bef47847a594b809d97856dcb94e0fdebec804b8ee28249b73b34dbe2b3af004"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
