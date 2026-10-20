class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.82.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.82.1/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "df58a872d7fe491de1c18e2501fea753dcdfb98a286edb249d8cebd8e7e3f0f5"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.82.1/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f521879bf59f3b23195e5729d69ff8dc670b35099afe99a0b28e4b7e4c843b3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.82.1/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8ccc151958d0e4b3ca532081008986c0a13ac6c48b8c82af7ba395c2c6943222"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.82.1/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5975efd4d3e85144d5a6bf540a331ddb761beda0b8cad4dcfce23f3a1502db25"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
