cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "771e67dc82323e124a7eb1e6dc1975fd55e7d9af8ccc60e0e822319e6cc917ea",
         intel: "100132236b46fb234a5cc7a6d0f5e81c8cf9f0a118c8ffa813a0e5445abd477b"

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
