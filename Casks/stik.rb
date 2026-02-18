cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.5"
  sha256 arm:   "7c0dc0b62bb0f1767638596130dda88257f184c706ff1befa683f99fa49241b0",
         intel: "37142abbde582cf9456175d13022f29d695cb1e8e789437fb993f9ea4224cc5b"

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
