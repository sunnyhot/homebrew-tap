cask "netbar" do
  version "0.45.0"
  sha256 "7017261a825f4d948d30d68df439cc3467a54a3ec19872710601695d0644fd2b"

  url "https://github.com/sunnyhot/NetBar/releases/download/v#{version}/NetBar.app.zip"
  name "NetBar"
  desc "Network diagnostics bar for macOS"
  homepage "https://github.com/sunnyhot/NetBar"

  app "NetBar.app"
end
