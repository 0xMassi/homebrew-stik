cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.6"
  sha256 arm:   "dd5f3a5852bd008b1ebd7d86d571cbe8a6284b5c3c73af0fccdbcb99889fd64b",
         intel: "f0595ea237b69b3f3ba598ffe5e6ce3904b5c6e63b573d066add15003c0c4a46"

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
