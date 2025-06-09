class Pivot < Formula
  desc "GitHub Issues Management CLI"
  homepage "https://github.com/rhino11/pivot"
  version "1.0.0"
  
  if Hardware::CPU.arm?
    url "https://github.com/rhino11/pivot/releases/download/v1.0.0/pivot-darwin-arm64"
    sha256 "PLACEHOLDER_SHA256_ARM64"
  else
    url "https://github.com/rhino11/pivot/releases/download/v1.0.0/pivot-darwin-amd64"
    sha256 "PLACEHOLDER_SHA256_AMD64"
  end
  
  def install
    bin.install Dir["pivot-darwin-*"].first => "pivot"
  end
  
  test do
    assert_match "pivot", shell_output("#{bin}/pivot version")
  end
end
