cask "car-rental-optimizer" do
  version "0.9.13"
  sha256 "386cd1773fd167c2960785088e639c4bc98cc9518a5d0b27ee19d2b338db9eec"

  url "https://github.com/sunnyhot/car-rental-optimizer/releases/download/v#{version}/CarRentalOptimizer-v#{version}.zip"
  name "租车比价助手"
  desc "Car rental price optimizer"
  homepage "https://github.com/sunnyhot/car-rental-optimizer"

  app "租车比价助手.app"
end
