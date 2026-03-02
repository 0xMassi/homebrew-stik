cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.4"
  sha256 arm:   "9c5f80c13ce97fa408956199f5f40327d6daba6f9f37e133713e87eb23f62082",
         intel: ""

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
