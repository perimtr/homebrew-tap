cask "powermate" do
  version "1.5"
  sha256 "2e249414fdaa53a262d7eb89ea352ea6b394ca6c4abf465fadc5c88a1498f21d"

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
