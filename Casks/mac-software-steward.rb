cask "mac-software-steward" do
  version "0.19.4"
  sha256 "bdf9a4d37d389eec7b98da569c4ab7bb785cbad31dc0eb64d2eec1114fdbe55e"

  url "https://github.com/sunnyhot/mac-software-steward/releases/download/v#{version}/MacSoftwareSteward-v#{version}.zip"
  name "MacSoftwareSteward"
  desc "Mac software inventory and maintenance steward"
  homepage "https://github.com/sunnyhot/mac-software-steward"

  app "MacSoftwareSteward.app"
end
