cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.4"
  sha256 arm:   "efc2abdfa8417384b8affe763044cbfc0c1741574bdb128c3e6b9ca7ee401597",
         intel: "18d3ff6231b935cd58880fba259347114406d8653d26f6642307e3fdaefb572f"

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
