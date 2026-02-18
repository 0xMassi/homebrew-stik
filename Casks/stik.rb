cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.6"
  sha256 arm:   "4aef645d2e8bc89571da4e149def0d62f7d4efdfa9f93a5a8ce4aa4f7e7fe4aa",
         intel: "e58bb7bd2f3b7df9fd5bc2664fd23d45f393731e524e0627ba4d691c3752c226"

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
