cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "9a089adee0b91afa2280c01e304d846ddffe2462f2b6e226ee29ee24744cc874",
         intel: "de30f33fe963aa66491c78002147fa805b24db5442095f7ef8672a1ac0e88bfe"

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
