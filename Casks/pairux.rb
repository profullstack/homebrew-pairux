cask "pairux" do
  version "0.3.4"

  on_arm do
    sha256 "390162782755a43ff7d0be8d0d0e1886a115c03fb38a943861d8591a70be30a0"
    url "https://github.com/profullstack/pairux.com/releases/download/v#{version}/PairUX-#{version}-arm64.dmg",
        verified: "github.com/profullstack/pairux.com/"
  end

  on_intel do
    sha256 "6be43cfaf7dfe9a021b4d74c6cfc546b9ff18d50d260563e653beb3aad3d53c9"
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
