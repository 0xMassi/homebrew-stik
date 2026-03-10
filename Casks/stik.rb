cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.7"
  sha256 arm:   "24832cf8f200ad62022dcef20875857cddac34a98d78cf5a037e4dc7f9f14f82",
         intel: "1b2ab67dbc310f5e3bd3dc5bdafe84354e59d43e731ff1dd1bf5c2c3de9cac56"

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
