class VibeCheck < Formula
  desc "Dev machine monitor for the terminal: processes, ports, containers and build junk"
  homepage "https://github.com/gaurav-dhakal/vibe-check"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaurav-dhakal/vibe-check/releases/download/v#{version}/vibe-check_#{version}_darwin_arm64.tar.gz"
      sha256 "cd5b5ea6e66eff94188418fe46e117a2813a9de4276c0962f8a1545fdaad31ab"
    end
    on_intel do
      url "https://github.com/gaurav-dhakal/vibe-check/releases/download/v#{version}/vibe-check_#{version}_darwin_amd64.tar.gz"
      sha256 "71eaed6340af1201da4738bae9a598640b08b0af7d45e42f53ab36cffdca7033"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaurav-dhakal/vibe-check/releases/download/v#{version}/vibe-check_#{version}_linux_arm64.tar.gz"
      sha256 "99419568b412b959308a14a8196af9281010d79144c4d68f78e6ce893777bc9a"
    end
    on_intel do
      url "https://github.com/gaurav-dhakal/vibe-check/releases/download/v#{version}/vibe-check_#{version}_linux_amd64.tar.gz"
      sha256 "efb2167804c120952335f7c113d48a466fe2c088116d26ed180cd513618c8a32"
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
