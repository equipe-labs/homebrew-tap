class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.179"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.179/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "07c201ce77ce23bcfb1a7a188f639f61068d14a2e8e6dd7c742966d5f33f24ca"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.179/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "71223a233b02d19ae2aa6d7b3366c27dcb9aca7b81dd1501f603005a9bb0133a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.179/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6a8e0f46bfbddda577e9687e0c53e20eb0e72b60bca29955834ed9592fcd604c"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.179/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "42a99a4c25a0772a13d87cd7c68806924321d21d70f7b776cf89fdd46202c6d4"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
