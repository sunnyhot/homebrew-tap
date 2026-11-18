cask "mac-software-steward" do
  version "0.19.1"
  sha256 "e69f1bb147b918ddbccb794933f5e48ab793ca7543043ba79b9d2b846b465194"

  url "https://github.com/sunnyhot/mac-software-steward/releases/download/v#{version}/MacSoftwareSteward-v#{version}.zip"
  name "MacSoftwareSteward"
  desc "Mac software inventory and maintenance steward"
  homepage "https://github.com/sunnyhot/mac-software-steward"

  app "MacSoftwareSteward.app"
end
