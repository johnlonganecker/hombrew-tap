require "FileUtils"

class Mockaroon < Formula
  homepage "https://github.com/geofffranks/spruce"

  v = "0.1.0"
  url "https://github.com/johnlonganecker/mockaroon/releases/download/#{v}/mockaroon-darwin-amd64"
  version v
  sha256 "21ca9dd64ade12f13151e52f82459cc9d8b8a8dc43c1f83a8ff1572790e98e88"

  def install
    FileUtils.mv("mockaroon-darwin-amd64", "mockaroon")
    bin.install "mockaroon"
  end

  test do
    system "#{bin}/mockaroon", "--version"
  end
end
