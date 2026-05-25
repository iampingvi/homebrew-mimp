cask "rekordsync" do
  version "1.0.30"

  on_intel do
    sha256 "2c3e7558203a6b9b63c3c628e941c301b10450f0ae56d98ddb8cbec38a59922d"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/rekordsync-v#{version}/RekordSync-x64.zip"
  end
  on_arm do
    sha256 "e6ab565911be9b5df0a9167cca27df9bcd31a86eb1b420c2394e5da562a8cf21"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/rekordsync-v#{version}/RekordSync-arm64.zip"
  end

  name "RekordSync"
  desc "Sync Rekordbox library to Cloud (Google Drive, Telegram, Local)"
  homepage "https://pingvi.link"

  auto_updates true

  app "RekordSync.app"

  uninstall quit: "com.pingvi.rekordsync"

  zap trash: [
    "~/Library/Application Scripts/com.pingvi.rekordsync",
    "~/Library/Containers/com.pingvi.rekordsync",
    "~/Library/Preferences/com.pingvi.rekordsync.plist",
    "~/Library/Saved Application State/com.pingvi.rekordsync.savedState",
  ]
end
