class Krusty < Formula
  desc "Terminal-based AI coding assistant powered by Claude"
  homepage "https://github.com/BurgessTG/Krusty"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.3/krusty-aarch64-apple-darwin.tar.gz"
      sha256 "2361ed9d7e185c63ac04ab7d3d5f62e9d340bdd9b69fe614024752a5ad327b09"
    else
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.3/krusty-x86_64-apple-darwin.tar.gz"
      sha256 "aea817a3d8bbe50076f7e925bdfd011201c2b8a24b17103855af213a302f078b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.3/krusty-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f0ab0f4d1499adce209b839b7918f14f666e1ef143396b1351895818954094c"
    else
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.3/krusty-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e4ff2aa9a310865d559bf1fabcee935a516205fe1fb75cfe3402e5e5356abbd"
    end
  end

  def install
    bin.install "krusty"
  end

  test do
    assert_match "krusty", shell_output("#{bin}/krusty --help")
  end
end
