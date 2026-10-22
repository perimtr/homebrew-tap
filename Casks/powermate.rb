cask "powermate" do
  version "1.6"
  sha256 "603a3789ea882ba01412275ecad2ffeeea30d3fb6857cee06785820a3cd1d3cb"

  url "https://github.com/perimtr/powermate/releases/download/v#{version}/PowerMate-#{version}.dmg",
      verified: "github.com/perimtr/powermate/"
  name "PowerMate"
  desc "Menu bar app for the Griffin PowerMate USB knob"
  homepage "https://github.com/perimtr/powermate"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "PowerMate.app"

  uninstall quit: "io.perimtr.powermate"

  zap trash: [
    "~/Library/Caches/io.perimtr.powermate",
    "~/Library/HTTPStorages/io.perimtr.powermate",
    "~/Library/Preferences/io.perimtr.powermate.plist",
    "~/Library/Saved Application State/io.perimtr.powermate.savedState",
  ]
end
