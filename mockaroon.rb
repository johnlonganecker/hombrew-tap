require "FileUtils"

class Mockaroon < Formula
  homepage "https://github.com/geofffranks/spruce"

  v = "v0.0.1"
  url "https://github.com/johnlonganecker/mockaroon/releases/download/#{v}/mockaroon-darwin-amd64"
  version v
  sha256 "91e90e790808d5f444fa42795891d65b569885fca056572d925c3f4b9db1cc11"

  def install
    FileUtils.mv("mockaroon-darwin-amd64", "mockaroon")
    bin.install "mockaroon"
  end

  test do
    system "#{bin}/mockaroon", "--version"
  end
end
