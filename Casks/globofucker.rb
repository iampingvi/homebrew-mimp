cask "globofucker" do
  version "1.0.4"
  sha256 "ed29258fb49d6abc6c431ab85c1ff85d05adc7c3b0cc9ba73e4b707ba9de1edf"

  url "https://github.com/iampingvi/homebrew-apps/releases/download/v1.0.4/GloboFucker.zip"
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
