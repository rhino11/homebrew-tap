class Pivot < Formula
  desc "GitHub Issues Management CLI"
  homepage "https://github.com/rhino11/pivot"
  version "1.1.1"
  
  if Hardware::CPU.arm?
    url "https://github.com/rhino11/pivot/releases/download/v1.1.1/pivot-darwin-arm64"
    sha256 "f4bc2a46e04eb178c06609d57f2b80ecbbf87286e5b6b22f64234c9f3cb86fb4"
  else
    url "https://github.com/rhino11/pivot/releases/download/v1.1.1/pivot-darwin-amd64"
    sha256 "163a2c09d5353b26d2b8d99a30396923f47bb3eb414b1c0b26ced2fd03041030"
  end
  
  def install
    bin.install Dir["pivot-darwin-*"].first => "pivot"
  end
  
  test do
    assert_match "pivot", shell_output("#{bin}/pivot version")
  end
end
