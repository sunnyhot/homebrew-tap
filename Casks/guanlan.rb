cask "guanlan" do
  version "4.9.7"
  sha256 "016608e0a3275995b16f07494d00586e4018b65a83a84f2e2c989217c893ef18"

  url "https://github.com/sunnyhot/guanlan-dashboard/releases/download/v#{version}/QiemanDashboard-#{version}.zip"
  name "Guanlan"
  name "观澜"
  desc "Qieman investment dashboard with AI research (macOS)"
  homepage "https://github.com/sunnyhot/guanlan-dashboard"

  app "QiemanDashboard.app"
end
