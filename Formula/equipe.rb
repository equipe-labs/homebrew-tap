class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.139"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.139/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "413adf563193811bc36a6e3ccb790116ec953b4dc9e832d78ac728885b5709cf"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.139/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "8a8a282ab09e01901d34ad5c0049cc86cfdd64f9d4896745112a513a1c37978c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.139/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "11d0e4ea5e735604fb1e8f35cc649bd8c41e6f656b78288effd58c2dabe4ebff"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.139/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b485a2c0a487f5227bb78078301e73808f109ee70f259fdd031a43793c7a8f7"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
