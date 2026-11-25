cask "pairux" do
  version "0.26.0"

  on_arm do
    sha256 "63e015062a894f84526caa20ba3031d6616a1bd09079c676fc14f5aeb22d20ef"
    url "https://github.com/profullstack/pairux.com/releases/download/v#{version}/PairUX-#{version}-arm64.dmg",
        verified: "github.com/profullstack/pairux.com/"
  end

  on_intel do
    sha256 "2ef93afe2dfe0eaf33ccfb6673a011dd75a3ee0c49eefd876eb933e237c705b1"
    url "https://github.com/profullstack/pairux.com/releases/download/v#{version}/PairUX-#{version}.dmg",
        verified: "github.com/profullstack/pairux.com/"
  end

  name "PairUX"
  desc "Collaborative screen sharing with remote control"
  homepage "https://pairux.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "PairUX.app"

  zap trash: [
    "~/Library/Application Support/PairUX",
    "~/Library/Caches/com.pairux.desktop",
    "~/Library/Preferences/com.pairux.desktop.plist",
    "~/Library/Saved Application State/com.pairux.desktop.savedState",
  ]
end
