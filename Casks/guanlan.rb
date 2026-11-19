cask "guanlan" do
  version "5.0.2"
  sha256 "a3cb03d71e5184bd051dc3af9dec5c21d74631481db1e7fa6fcadb1c8ce24400"

  url "https://github.com/sunnyhot/guanlan-dashboard/releases/download/v#{version}/QiemanDashboard-#{version}.zip"
  name "Guanlan"
  name "观澜"
  desc "Qieman investment dashboard with AI research"
  homepage "https://github.com/sunnyhot/guanlan-dashboard"

  depends_on macos: :sonoma

  app "QiemanDashboard.app"
end
