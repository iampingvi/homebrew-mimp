cask "rekordsync" do
  version "1.0.30"

  on_intel do
    sha256 "28d6aa4fb44a7d9cf692e21f9593d79beacbe6399bb633f6bd42b5d4ab0eb601"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/rekordsync-v#{version}/RekordSync-x64.zip"
  end
  on_arm do
    sha256 "db919919ae05027fbe3e734e1ddcdb8666e102bb68271ea213bf3059ca60c609"
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
