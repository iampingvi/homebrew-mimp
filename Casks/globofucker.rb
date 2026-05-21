cask "globofucker" do
  version "1.0.3"
  sha256 "29f397a2d46aad157616fdb5ac49ad2fea5f7ac93213370de08a44c5086fffdc"

  url "https://github.com/iampingvi/GloboFucker/releases/download/v#{version}/GloboFucker.zip"
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
