cask "globofucker" do
  version "1.0.1"
  sha256 "759ba7bfd9e42fa3af590418ad59ca52a88a633af69d923bd65f0d98859d0508"

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
