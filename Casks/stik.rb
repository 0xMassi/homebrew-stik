cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "6fc2e898878d748c273e3432034801f158488c60485be28bb2a3b07839d5d90f",
         intel: "2a582193f15fabffa565bbb810bbe170eab7ae799e83f083c65ac58e388edf0a"

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
