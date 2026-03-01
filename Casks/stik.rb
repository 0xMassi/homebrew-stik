cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.3"
  sha256 arm:   "29a3a305f3185a4e74077c86beba314b70dc05d496c21b5d2c0f696fcab29dd5",
         intel: "4fbc69e0c7c71dcbf26ad5a6b7d179b5d72424d1aa25cae26c24a59d5ed72eca"

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
