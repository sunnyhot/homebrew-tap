cask "mac-software-steward" do
  version "0.19.3"
  sha256 "d9eb9e60633f73bcf876320558195eb481a88056b96f43ab6635ad59e3c66669"

  url "https://github.com/sunnyhot/mac-software-steward/releases/download/v#{version}/MacSoftwareSteward-v#{version}.zip"
  name "MacSoftwareSteward"
  desc "Mac software inventory and maintenance steward"
  homepage "https://github.com/sunnyhot/mac-software-steward"

  app "MacSoftwareSteward.app"
end
