cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "9719e77868134737ebe2be642f23cca2dbf61e5d448577b529574a665591ae9e",
         intel: "c829a0b0e273c5b95ab5f66ef2129029f4224fc95b26445ede2cb0f757f60c4a"

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
