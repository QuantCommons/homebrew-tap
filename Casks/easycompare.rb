cask "easycompare" do
  version "1.0.0"
  sha256 "7a3487500c718de7bce316f0c377f293b5d74611ddf43958a5218255f99a8f7d"

  url "https://storage.googleapis.com/easycompare-media/mac/EasyCompare-#{version}.dmg"
  name "EasyCompare"
  desc "Compare up to 200 stocks and ETFs on one chart"
  homepage "https://easycompare.io/mac"

  livecheck do
    url "https://easycompare.io/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "EasyCompare.app"

  zap trash: [
    "~/Library/Application Support/EasyCompare",
    "~/Library/Caches/io.easycompare.mac",
    "~/Library/HTTPStorages/io.easycompare.mac",
    "~/Library/Preferences/io.easycompare.mac.plist",
    "~/Library/Saved Application State/io.easycompare.mac.savedState",
  ]
end
