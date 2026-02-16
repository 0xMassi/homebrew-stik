cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.3"
  sha256 arm:   "afc1f0e0c29d44d1ec4ff61868dec8801f45ec75bd25de5e632c25d6e3b602c8",
         intel: "9a5d09d3cad9f2a83365530a71b13ff580f5e439d963d40565f50e9252118e5b"

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
