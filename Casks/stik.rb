cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.9"
  sha256 arm:   "0b57122db93dd5b2e596b1bab2a5dd6b8faac8ee4479458dc28a519cfe434c0e",
         intel: "d756481e226444af00e557acf33170c763a5f73513a539799e9e34f3776f3f5c"

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
