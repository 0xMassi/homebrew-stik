cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "9fd48388e7e0dde5cc73dd0b905e4cf17621686a5ef2af9256d3f6a537c843ec",
         intel: "c0682c8f187d143de7f1c0610ed53f137783cc94c0edfabf5582605b61754c80"

  url "https://github.com/0xMassi/stik_app/releases/download/v#{version}/Stik_#{version}_#{arch}.dmg"
  name "Stik"
  desc "Instant thought capture - one shortcut, post-it appears, type, close"
  homepage "https://github.com/0xMassi/stik_app"

  depends_on macos: :sonoma

  app "Stik.app"

  zap trash: [
    "~/Documents/Stik",
    "~/.stik",
    "~/Library/Caches/com.stik.app",
    "~/Library/WebKit/com.stik.app",
  ]
end
