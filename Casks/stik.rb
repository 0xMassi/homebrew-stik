cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "21ec7d9e2eba4f15df99cda1dd9d74b94a7b291ede6c49fddf604a4f331c41bf",
         intel: "24f8eeb30f7b4a422d7c3d2fc9fc88787c1ae4cca0efe51fea30fd33c13d6157"

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
