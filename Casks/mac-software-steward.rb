cask "mac-software-steward" do
  version "0.18.17"
  sha256 "9d317ce3696ebaf8e566c836c27886b2ea634de9cf73c408470aae72107f552e"

  url "https://github.com/sunnyhot/mac-software-steward/releases/download/v#{version}/MacSoftwareSteward-v#{version}.zip"
  name "MacSoftwareSteward"
  desc "Mac software inventory and maintenance steward"
  homepage "https://github.com/sunnyhot/mac-software-steward"

  app "MacSoftwareSteward.app"
end
