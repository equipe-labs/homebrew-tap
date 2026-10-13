class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.11.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "af14fe1cb5a0944b84ae8e4e329e7e1cb1b7b86d219de2970efe9fabba3fb624"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.11.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c484239859ff0ec9c66d649f186e2e3734683fcbe7ba89bed0a077f50ab10ebe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.11.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1ba2290276714a0ca691aa36480b3e8a8c9baf0f3aaf49b84bd7c869bdd008a2"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.11.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3030c9834bdb0a6f091ff42c361e29a957b64e354e3eea4ec20e3cd13fbf6fbd"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
