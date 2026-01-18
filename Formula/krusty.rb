class Krusty < Formula
  desc "Terminal-based AI coding assistant powered by Claude"
  homepage "https://github.com/BurgessTG/Krusty"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.0/krusty-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_MACOS_ARM64"
    else
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.0/krusty-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_MACOS_X64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.0/krusty-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    else
      url "https://github.com/BurgessTG/Krusty/releases/download/v0.1.0/krusty-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X64"
    end
  end

  def install
    bin.install "krusty"
  end

  test do
    assert_match "krusty", shell_output("#{bin}/krusty --help")
  end
end
