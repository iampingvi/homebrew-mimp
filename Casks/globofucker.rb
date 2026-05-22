cask "globofucker" do
  version "1.0.7"
  sha256 "93bc92997e5411d332ffc831d36f15d77c16082dfca3dd987f23feb49f8d1130"

  url "https://github.com/iampingvi/homebrew-apps/releases/download/globofucker-v1.0.7/GloboFucker.zip"
  name "GloboFucker"
  desc "Switch keyboard language instantly with Fn/Globe key on macOS"
  homepage "https://pingvi.link"

  app "GloboFucker.app"

  uninstall quit: "com.globofucker.app"

  zap trash: [
    "~/Library/Preferences/com.globofucker.app.plist",
    "~/Library/Caches/com.globofucker.app",
  ]
end
