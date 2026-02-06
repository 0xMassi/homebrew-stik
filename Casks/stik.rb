cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "e50786c11f9104c35ba9f3e59909388d8e39499ebdbe0236b5262d3fdef01a42",
         intel: "6ceeca88e59f1232746f8da9b077b42deca189295fe455a09e2df078314cf2c0"

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
