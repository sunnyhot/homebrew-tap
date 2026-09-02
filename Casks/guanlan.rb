cask "guanlan" do
  version "4.9.6"
  sha256 "ebb3ef2af03b2ffb331ae60a3cd3c3771a29a1e1202680754557c802c45c3fda"

  url "https://github.com/sunnyhot/guanlan-dashboard/releases/download/v#{version}/QiemanDashboard-#{version}.zip"
  name "Guanlan"
  name "观澜"
  desc "Qieman investment dashboard with AI research (macOS)"
  homepage "https://github.com/sunnyhot/guanlan-dashboard"

  app "QiemanDashboard.app"
end
