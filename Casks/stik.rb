cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.8"
  sha256 arm:   "3d60a3a2a9135c240b6b7450c6d059c225f19df91e26123d024a305cab331265",
         intel: "a59ae19d1458be7ad1347c0ba1168e5afbd5e57de711a8354d498e531a389569"

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
