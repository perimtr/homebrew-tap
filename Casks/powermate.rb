cask "powermate" do
  version "1.4"
  sha256 "5874ec94ede041ff2180d0504e78a41902b77f3d804bdd2d83dc94047347f370"

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
