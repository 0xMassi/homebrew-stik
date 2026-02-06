cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "fa5589a24375fd59c5e0742b35c4c3b793553bb936e483d5f6d498b8ddc44e12",
         intel: "8484c459523187286b27c7cbd7c9915b960d1b2f3baec6dacc70d05193ee94b7"

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
