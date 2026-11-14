class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.116"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.116/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "20a3bc1dc362578eff4323f54120c3c5a36635a03d9add366a291e3defc38ed0"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.116/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "746131dfe991cb235f62fa828de0261a08ea7d56461ce5a236c64b61fe5b45d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.116/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "74bbd167ac90564534620c6ca56a0818630a10ffc23bb55a457fc73264eb48de"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.116/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02a50ce00637f7fd0e11c75d4ccb75b4f3dfa27cfbaef0e19aaac35f2f72392c"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
