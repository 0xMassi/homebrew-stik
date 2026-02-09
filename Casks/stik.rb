cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "e9de518f71879a7ffcad49b86af2eb570a528b5a5001e3b74df1258c615b6fef",
         intel: "6c1654ee60cf748c217b3cd21624b36e78a88842da98c4535d9c0044d6e48fc1"

  url "https://github.com/0xMassi/stik_app/releases/download/v#{version}/Stik_#{version}_#{arch}.dmg"
  name "Stik"
  desc "Instant thought capture - one shortcut, post-it appears, type, close"
  homepage "https://github.com/0xMassi/stik_app"

  depends_on macos: ">= :catalina"

  app "Stik.app"

  zap trash: [
    "~/Documents/Stik",
    "~/.stik",
    "~/Library/Caches/com.stik.app",
    "~/Library/WebKit/com.stik.app",
  ]
end
