cask "pairux" do
  version "0.24.0"

  on_arm do
    sha256 "d8188ff4ba8481f34858a96bf7a48733c767e3553f0eb738d7a0f3a7d531d799"
    url "https://github.com/profullstack/pairux.com/releases/download/v#{version}/PairUX-#{version}-arm64.dmg",
        verified: "github.com/profullstack/pairux.com/"
  end

  on_intel do
    sha256 "1d8df6e64686956985146651fe2fef1a1706d71b3ac9663e6cfea5d6d84060b4"
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
