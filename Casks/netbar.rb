cask "netbar" do
  version "0.43.1"
  sha256 "7af59f08a474270babba372f99b3ed7df33cfc1bed0c5e9b1be932d68da0610a"

  url "https://github.com/sunnyhot/NetBar/releases/download/v#{version}/NetBar.app.zip"
  name "NetBar"
  desc "Network diagnostics bar for macOS"
  homepage "https://github.com/sunnyhot/NetBar"

  app "NetBar.app"
end
