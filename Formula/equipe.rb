class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.58.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.58.0/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "d297e0d48585b93e0c7474455ee809336f9e45d1a30356c5f8c5f0135508742d"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.58.0/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "c731de7694afe690d8773bb427f6e21c89fd954cbc03641822390166b747a491"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.58.0/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "33042047778a4bad9bbbe88c0e7415e1d9feaa2b01dc74bcfeeece1994cdb9ae"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.58.0/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "316622047283ba6c4df5c7bd87d9bd9f46af773c08c36db9255fce3892508015"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
