cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.3"
  sha256 arm:   "1dcc145f6d1650a5f1eea5f128da68b21d75ea2ee86eba9b08d0fce79e1f084c",
         intel: "497d4e10fd534211c7a794da44e4ce8c6a78ece6fee4facff51e768db8ef0612"

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
