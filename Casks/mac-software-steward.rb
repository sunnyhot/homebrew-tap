cask "mac-software-steward" do
  version "0.19.0"
  sha256 "663f5e522b41501ed8fa7fdb0eae4f94ae45b58199ef01d54e5ef833dad6c77a"

  url "https://github.com/sunnyhot/mac-software-steward/releases/download/v#{version}/MacSoftwareSteward-v#{version}.zip"
  name "MacSoftwareSteward"
  desc "Mac software inventory and maintenance steward"
  homepage "https://github.com/sunnyhot/mac-software-steward"

  app "MacSoftwareSteward.app"
end
