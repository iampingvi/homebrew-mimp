cask "globofucker" do
  version "1.0.7"
  sha256 "6c49bf75f93fb0128533cdb2bfb534ae9a48eda07f7261bbcc808bf192bb0c89"

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
