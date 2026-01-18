class Krusty < Formula
  desc "Terminal-based AI coding assistant powered by Claude"
  homepage "https://github.com/BurgessTG/Krusty"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.0/krusty-aarch64-apple-darwin.tar.gz"
      sha256 "886cb0dafda1c0fd53a05a97ff47f48648f05040ca1a46f287546ef276d67337"
    else
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.0/krusty-x86_64-apple-darwin.tar.gz"
      sha256 "20fd3fd8e067bb4104cc4957c06ac0e629bcf9912b8146d0c60953eda509d84f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.0/krusty-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a815bb341708dbaa09672452f69b6da37ed5e865be944c3dab0eeb382458df1"
    else
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.0/krusty-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea61708a5a1094e63557b88df7e23e33fa6276c53d981cd7c8b493f316464ddc"
    end
  end

  def install
    bin.install "krusty"
  end

  test do
    assert_match "krusty", shell_output("#{bin}/krusty --help")
  end
end
