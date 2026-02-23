cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "3a8da5883d9128664266d7f183bfa8535744260c2b199b038ecd41f1e92b9305",
         intel: "4c53bad246f09905473eb2d06bb510400e694cf24a676308639fc5ba267a6d8a"

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
