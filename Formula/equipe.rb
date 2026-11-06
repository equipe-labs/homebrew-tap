class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.48/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "7fca7cf44b7b47885615c8bbcc110123b4b4ce0fda628c6d77e539a109d8d32a"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.48/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "f74a8878aba49eb10f7b749a24afdc08894300f501fa469dd21a350f0f0af603"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.48/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ba0d6347caf604f639777eae241ea5734b2ba632f552e08a57bfb48c4cde97ea"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.48/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b750e18342792845d96641cbe021a25366f65d7114d63d211123e3ccb7846e82"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
