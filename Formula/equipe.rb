class Equipe < Formula
  desc "Full software squad of AI agents, on your own Claude Code and Codex plans"
  homepage "https://equipe.im"
  version "0.103.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.37/equipe-aarch64-apple-darwin.tar.gz"
      sha256 "d6905337657b3b3124b3f47793a65d3fa85ef00f222eb1c89659eb1304597f99"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.37/equipe-x86_64-apple-darwin.tar.gz"
      sha256 "21bd7ea0804657e994270267d4995700f615592d95d999675451725a4fea2c40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.37/equipe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3e357adb4eb3eff45acf97d1bb4bba922d10df26a30c283d90b77504b40f4071"
    end
    on_intel do
      url "https://github.com/equipe-labs/equipe/releases/download/v0.103.37/equipe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df917b46ee0455794b02923e159771f0c54bd534a2f98966bde125c8683aa983"
    end
  end

  def install
    bin.install "equipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/equipe --version")
  end
end
