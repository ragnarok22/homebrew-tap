cask "chimedock" do
  version "1.1.0"
  sha256 "2f0a3984bd8742efbaeea9a7a7d0afd10fb00290c93403c3798a7f69711a664c"

  url "https://github.com/ragnarok22/ChimeDock/releases/download/v#{version}/ChimeDock.dmg"
  name "ChimeDock"
  desc "Menu bar app that plays chime sounds for USB device events"
  homepage "https://github.com/ragnarok22/ChimeDock"

  app "ChimeDock.app"
end
