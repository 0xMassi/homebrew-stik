cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "fdd67f0629aebf5b125cd1bea92e4483d70fe356f9b37fc6d9f330330925cac1",
         intel: "0210c122a9801943e903a9814cf61114d5199d0920edf007a836368a1190704e"

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
