class Krusty < Formula
  desc "Terminal-based AI coding assistant powered by Claude"
  homepage "https://github.com/BurgessTG/Krusty"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.2/krusty-aarch64-apple-darwin.tar.gz"
      sha256 "e4de1fe0b75d1a0368fab3735facb7800e8f66f25da5fe00531dfe85726eeed8"
    else
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.2/krusty-x86_64-apple-darwin.tar.gz"
      sha256 "9165fa18ce9ef8f5e001698d14dfcd7a8859a8279574af19f59153486646a02c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.2/krusty-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1fdfb6346e16f09bbefcb38b7b554d387cb799bb0f62c6f36a853829576e867e"
    else
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.2/krusty-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb75771d7192a4863aa95c4f4df510f609ce215c2ff20b056e7e1abb26c917c5"
    end
  end

  def install
    bin.install "krusty"
  end

  test do
    assert_match "krusty", shell_output("#{bin}/krusty --help")
  end
end
