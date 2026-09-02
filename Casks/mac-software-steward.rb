cask "mac-software-steward" do
  version "0.18.16"
  sha256 "29bcf8359afde5b8b8b3be5a76c27c36175325aa3762b0a59111aec4183ffab4"

  url "https://github.com/sunnyhot/mac-software-steward/releases/download/v#{version}/MacSoftwareSteward-v#{version}.zip"
  name "MacSoftwareSteward"
  desc "Mac software inventory and maintenance steward"
  homepage "https://github.com/sunnyhot/mac-software-steward"

  app "MacSoftwareSteward.app"
end
