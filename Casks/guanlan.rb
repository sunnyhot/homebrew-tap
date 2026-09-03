cask "guanlan" do
  version "4.9.8"
  sha256 "50a2a15891a566750c570f5df4ffe73814483401dca47fbeeaaf383b8dbb8c13"

  url "https://github.com/sunnyhot/guanlan-dashboard/releases/download/v#{version}/QiemanDashboard-#{version}.zip"
  name "Guanlan"
  name "观澜"
  desc "Qieman investment dashboard with AI research (macOS)"
  homepage "https://github.com/sunnyhot/guanlan-dashboard"

  app "QiemanDashboard.app"
end
