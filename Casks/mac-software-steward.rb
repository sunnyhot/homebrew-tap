cask "mac-software-steward" do
  version "0.19.2"
  sha256 "61739224a95759b7ecefd6a93563801020d0e324dec441cc788049701c814880"

  url "https://github.com/sunnyhot/mac-software-steward/releases/download/v#{version}/MacSoftwareSteward-v#{version}.zip"
  name "MacSoftwareSteward"
  desc "Mac software inventory and maintenance steward"
  homepage "https://github.com/sunnyhot/mac-software-steward"

  app "MacSoftwareSteward.app"
end
