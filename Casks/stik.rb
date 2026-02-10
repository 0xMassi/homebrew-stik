cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.4"
  sha256 arm:   "8e0b147c593707193eb49e34be232d2be485dba17df17231c6b9be61a39c4fe0",
         intel: "38538b0135ca9b0c6a1f3d37fbe417da9412e4aadeefec6d90116acfa21ba90a"

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
