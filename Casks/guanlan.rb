cask "guanlan" do
  version "5.0.0"
  sha256 "ee5e9da1edd52b84e2525a615fd2b22a346068f67d289355a5e30e9bd64f2d57"

  url "https://github.com/sunnyhot/guanlan-dashboard/releases/download/v#{version}/QiemanDashboard-#{version}.zip"
  name "Guanlan"
  name "观澜"
  desc "Qieman investment dashboard with AI research"
  homepage "https://github.com/sunnyhot/guanlan-dashboard"

  depends_on :macos

  app "QiemanDashboard.app"
end
