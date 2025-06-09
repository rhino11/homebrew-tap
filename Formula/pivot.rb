class Pivot < Formula
  desc "GitHub Issues Management CLI"
  homepage "https://github.com/rhino11/pivot"
  version "1.0.3"
  
  if Hardware::CPU.arm?
    url "https://github.com/rhino11/pivot/releases/download/v1.0.3/pivot-darwin-arm64"
    sha256 "535d3a3a34b91d54fba6bd81d1d3ede691b806f2ac8d34c468d69f9afc537656"
  else
    url "https://github.com/rhino11/pivot/releases/download/v1.0.3/pivot-darwin-amd64"
    sha256 "68d13ce8b3ca2b512ed116cd0ad64422d75b1a4ad106126b48eef8f68f1b3f94"
  end
  
  def install
    bin.install Dir["pivot-darwin-*"].first => "pivot"
  end
  
  test do
    assert_match "pivot", shell_output("#{bin}/pivot version")
  end
end
