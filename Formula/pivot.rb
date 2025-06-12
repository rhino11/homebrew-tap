class Pivot < Formula
  desc "GitHub Issues Management CLI"
  homepage "https://github.com/rhino11/pivot"
  version "1.1.0"
  
  if Hardware::CPU.arm?
    url "https://github.com/rhino11/pivot/releases/download/v1.1.0/pivot-darwin-arm64"
    sha256 "1282e980548b81925933829f7d6afe8df0312adb2fbbcd4ed5f7f5d413ccee82"
  else
    url "https://github.com/rhino11/pivot/releases/download/v1.1.0/pivot-darwin-amd64"
    sha256 "5cbf194df1cc795ad8ef75c5b6373169cbe2011c6a3a4a1294617477f62d059d"
  end
  
  def install
    bin.install Dir["pivot-darwin-*"].first => "pivot"
  end
  
  test do
    assert_match "pivot", shell_output("#{bin}/pivot version")
  end
end
