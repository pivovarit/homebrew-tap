class Tdocker < Formula
  desc "Minimalistic TUI for Docker"
  homepage "https://github.com/pivovarit/tdocker"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pivovarit/tdocker/releases/download/v0.0.4/tdocker_darwin_arm64.tar.gz"
      sha256 "bacc85de22e6f9838b3991920f976a1954c72c5e5af74752cb7a0d7ce11a3e14"
    end
    on_intel do
      url "https://github.com/pivovarit/tdocker/releases/download/v0.0.4/tdocker_darwin_amd64.tar.gz"
      sha256 "e56fd2295952b0a77ac44b3eccad5b3c817e4bc747318ea56866e511f4eb2193"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pivovarit/tdocker/releases/download/v0.0.4/tdocker_linux_arm64.tar.gz"
      sha256 "d145ae438d75cff2f01177300a498535e795531e4d4932e1daeaf52fffa71cfa"
    end
    on_intel do
      url "https://github.com/pivovarit/tdocker/releases/download/v0.0.4/tdocker_linux_amd64.tar.gz"
      sha256 "826473560dd698522ca6342b8d6c4d3086da3add74d54d1e35a9d514533eada8"
    end
  end

  def install
    bin.install "tdocker"
  end

  test do
    assert_match "tdocker", shell_output("#{bin}/tdocker --help 2>&1", 1)
  end
end
