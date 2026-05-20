cask "mimp" do
  version "1.2.1"

  on_intel do
    sha256 "77cfa220353295443d8ff465a08cd2fad81417e5c948b2c4ac1931ef29ae4fbf"
    url "https://github.com/iampingvi/homebrew-mimp/releases/download/v#{version}/MIMP-x64.zip"
  end
  on_arm do
    sha256 "39936792c2556e7a428fbbd8b26526da07a766655a8402cad45fa4f1dfcdf09f"
    url "https://github.com/iampingvi/homebrew-mimp/releases/download/v#{version}/MIMP-arm64.zip"
  end

  name "MIMP"
  desc "Minimal Interface Music Player for MacOS"
  homepage "https://mimp.pingvi.link/"

  app "MIMP.app"

  zap trash: [
    "~/Library/Application Scripts/com.pingvi.mimp",
    "~/Library/Containers/com.pingvi.mimp",
    "~/Library/Preferences/com.pingvi.mimp.plist",
    "~/Library/Saved Application State/com.pingvi.mimp.savedState",
  ]
end
