cask "rekordsync" do
  version "1.0.34"

  on_intel do
    sha256 "f95074dea64fe367b39d7fea16821a4df0d7afbbbf95a2e9c19113fee2372fd6"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/rekordsync-v#{version}/RekordSync-x64.zip"
  end
  on_arm do
    sha256 "05bdbe10bf5f7cb54429079eebc91fc28810e0aba1bba22dfc07daae271827d8"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/rekordsync-v#{version}/RekordSync-arm64.zip"
  end

  name "RekordSync"
  desc "Sync Rekordbox library to Cloud (Google Drive, WebDAV FTP SFTP, Local)"
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
