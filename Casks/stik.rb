cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "05f04f12cdab61d81cf55a4622f443aa50ed71cded212a1b4f0044bef2f98469",
         intel: "8e25fe774e09bf75e0e4e930a08cfa2d641b0ba010757ff93e918b3aa51dbf02"

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
