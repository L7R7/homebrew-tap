class HaskellGithubReleaseTest < Formula
  desc "Test project for prebuilt-binary GitHub releases of Haskell projects"
  homepage "https://github.com/L7R7/haskell-github-release-test"
  version "0.0.28"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/L7R7/haskell-github-release-test/releases/download/v0.0.28/haskell-github-release-test-0.0.28-macOS-aarch64.zip"
      sha256 "218c8d5fa24376d2a1919f248f111b740ba99de96b622a6ec35b154e64c07779"
    end
    on_intel do
      url "https://github.com/L7R7/haskell-github-release-test/releases/download/v0.0.28/haskell-github-release-test-0.0.28-macOS-x86_64.zip"
      sha256 "5c51b9b92fb9c28d1df5d876245c6311d54e7fc85b0e5eb276f60681ed5989ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/L7R7/haskell-github-release-test/releases/download/v0.0.28/haskell-github-release-test-0.0.28-Linux-x86_64.zip"
      sha256 "9ee6905d6e565be91062f9167f7c953d03c40e8d93438dfaba3ba6ac0d5329e4"
    end
  end

  def install
    bin.install "haskell-github-release-test"
  end

  test do
    system bin/"haskell-github-release-test"
  end
end
