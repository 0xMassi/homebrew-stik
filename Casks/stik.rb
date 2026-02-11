cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "d6f90fef8e973f9518ec6b2f1e28cfec7485150f38192947d84be81fb387f97d",
         intel: "03c7606db6b40bd91f9292f11c9f77675736e177b3293d7f1ea653b9c6871a42"

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
