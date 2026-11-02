class VibeCheck < Formula
  desc "Dev machine monitor for the terminal: processes, ports, containers and build junk"
  homepage "https://github.com/gaurav-dhakal/vibe-check"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaurav-dhakal/vibe-check/releases/download/v#{version}/vibe-check_#{version}_darwin_arm64.tar.gz"
      sha256 "e2f92718319edbb3e0665ba83f6e6543eae2bd52f251f7891ec117cf9343c3a4"
    end
    on_intel do
      url "https://github.com/gaurav-dhakal/vibe-check/releases/download/v#{version}/vibe-check_#{version}_darwin_amd64.tar.gz"
      sha256 "17c7c57d327063ffd895af689e33360c22f99bb8317948dcb248b7ef9328161d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaurav-dhakal/vibe-check/releases/download/v#{version}/vibe-check_#{version}_linux_arm64.tar.gz"
      sha256 "06a0a6e4d374e4d72550f5126b8300f225e8f8c091ecc17e3746f34ac5879446"
    end
    on_intel do
      url "https://github.com/gaurav-dhakal/vibe-check/releases/download/v#{version}/vibe-check_#{version}_linux_amd64.tar.gz"
      sha256 "c34f423dfda0c2d2205134377460e6e00e3606c9f96231eedba964de46d51007"
    end
  end

  def install
    bin.install "vibe-check"
    bin.install "vcheck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibe-check --version")
    assert_match "cpu", shell_output("#{bin}/vcheck --json")
  end
end
