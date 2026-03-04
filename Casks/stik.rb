cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.5"
  sha256 arm:   "ce2924948ecedfcfb9170d8f5ddf024d79aa25be3e3108e1fa874d9278741abf",
         intel: "1ca4e4001f9396a6902db9f302c4ff8a927756d052159b3086fe77d5c40bb5ee"

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
