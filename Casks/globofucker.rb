cask "globofucker" do
  version "1.0.5"
  sha256 "97959ac2a81521c5299140ac009d569bac0367355d4d8933126da09bf934d1c7"

  url "https://github.com/iampingvi/homebrew-apps/releases/download/globofucker-v1.0.5/GloboFucker.zip"
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
