cask "guanlan" do
  version "5.0.1"
  sha256 "655b951df7fd14fca183287ee747aff3263c4966d4259ef2fee14067749539c7"

  url "https://github.com/sunnyhot/guanlan-dashboard/releases/download/v#{version}/QiemanDashboard-#{version}.zip"
  name "Guanlan"
  name "观澜"
  desc "Qieman investment dashboard with AI research"
  homepage "https://github.com/sunnyhot/guanlan-dashboard"

  depends_on macos: :sonoma

  app "QiemanDashboard.app"
end
