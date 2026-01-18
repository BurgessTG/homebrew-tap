class Krusty < Formula
  desc "Terminal-based AI coding assistant powered by Claude"
  homepage "https://github.com/BurgessTG/Krusty"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.1/krusty-aarch64-apple-darwin.tar.gz"
      sha256 "91afe8168fafd99d0b9890d774cdbd993c3625e87569c612239f369c305aac3a"
    else
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.1/krusty-x86_64-apple-darwin.tar.gz"
      sha256 "57fccf1be82fe9de036e85df11371d3c00b7d40e23512dfca970ee85273a3645"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.1/krusty-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dfa1e2527df154e8437dd5b99d59d192e88042ad3d54712f68fb801805f1860c"
    else
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.1/krusty-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25a17bf57e92582bdf57e7afd989fcb32c4230415f961bcfd7609e3d42820ad5"
    end
  end

  def install
    bin.install "krusty"
  end

  test do
    assert_match "krusty", shell_output("#{bin}/krusty --help")
  end
end
