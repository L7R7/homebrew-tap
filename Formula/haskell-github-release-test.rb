class HaskellGithubReleaseTest < Formula
  desc "Test project for prebuilt-binary GitHub releases of Haskell projects"
  homepage "https://github.com/L7R7/haskell-github-release-test"
  version "0.0.27"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/L7R7/haskell-github-release-test/releases/download/v0.0.27/haskell-github-release-test-0.0.27-macOS-aarch64.zip"
      sha256 "afc71c5312e5833f182cb1285911932dc221a073c10e4276aeeb50a667f82ba3"
    end
    on_intel do
      url "https://github.com/L7R7/haskell-github-release-test/releases/download/v0.0.27/haskell-github-release-test-0.0.27-macOS-x86_64.zip"
      sha256 "001613c98a4a752d2a175a09577a7874acbf1a7ab846422e50a626ddff7e6005"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/L7R7/haskell-github-release-test/releases/download/v0.0.27/haskell-github-release-test-0.0.27-Linux-x86_64.zip"
      sha256 "80f6ee46910f9c29e276f4881e0e940fcb127e3e1ea520101724968097088d1a"
    end
  end

  def install
    bin.install "haskell-github-release-test"
  end

  test do
    system bin/"haskell-github-release-test"
  end
end
