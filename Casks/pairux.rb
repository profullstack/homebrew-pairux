cask "pairux" do
  version "0.9.19"

  on_arm do
    sha256 "4222748dd4bdc97ae1571b99e8b42d8f53958a3caf9acb01611680e869462e7d"
    url "https://github.com/profullstack/pairux.com/releases/download/v#{version}/PairUX-#{version}-arm64.dmg",
        verified: "github.com/profullstack/pairux.com/"
  end

  on_intel do
    sha256 "8d819dc443ddacda9fa5979941e37ea15532ebdc21ec4fb8a63e1e14a89053dc"
    url "https://github.com/profullstack/pairux.com/releases/download/v#{version}/PairUX-#{version}-x64.dmg",
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
