class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.83.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.83.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "62781a1488c3cba0337b50fe8686de8b1a2d525a32d9dc620ee777a866fa0eea"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.83.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "4bc7af41138277ea5db572fd89d97a23317f5c85805f36c27e121e9b5063100a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.83.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "448498416f07637923ab4e74052b77e5a95457021367e975ae4793ed01c00ba5"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.83.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "662162a4d5bd38b3a0e76a1cc558d5fe3e3773dfd76248a1e6396e94e633ebe7"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
