class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.31/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7b426e84c2670a056cbd000caf4c74fb86414c641a1d457e0e914bacd2354ad0"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.31/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "89fe445a6cd662a6d953a53a9defbe080d751be591cdec1ba6fe7eae21441c17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.31/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e7285aee4dce561707c13579f683a9352bc86836d77bc193b3e76207ff46ef9a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.31/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "71815d517b4ef7b87332290bcd15befc58426c7a10536c3ace953256d98a4d89"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
