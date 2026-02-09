cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "e430a013b89a456d4fa0dad66a9523c71938dc4031ebf0a3531142e071273f88",
         intel: "ec0558c8271472f069f9398008710565eef0461bfb987790ca8274ff7c3425ae"

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
