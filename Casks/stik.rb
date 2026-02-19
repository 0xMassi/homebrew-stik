cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "00513725f20e882025668cdcca476ae648c3daefbb22f6e1c125d47c6f49dc20",
         intel: "012a99a77ba2a34cfe73f01374a57a585adad691ab4241b7927a60ea1266f768"

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
