cask "easycompare" do
  version "1.2.0"
  sha256 "43a428ca12964f7c1b622335766e8005f98bdce891bc004c057a5e1c397859de"

  url "https://storage.googleapis.com/easycompare-media/mac/EasyCompare-#{version}.dmg"
  name "EasyCompare"
  desc "Compare up to 200 stocks and ETFs on one chart"
  homepage "https://easycompare.io/mac"

  livecheck do
    url "https://easycompare.io/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "EasyCompare.app"

  zap trash: [
    "~/Library/Application Support/EasyCompare",
    "~/Library/Caches/io.easycompare.mac",
    "~/Library/HTTPStorages/io.easycompare.mac",
    "~/Library/Preferences/io.easycompare.mac.plist",
    "~/Library/Saved Application State/io.easycompare.mac.savedState",
  ]
end
