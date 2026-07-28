cask "pairux" do
  version "0.9.45"

  on_arm do
    sha256 "111a9bd66590b6d73f102e2bb7114ab1bcf954f822e70a192a8790fdec6fb4ec"
    url "https://github.com/profullstack/pairux.com/releases/download/v#{version}/PairUX-#{version}-arm64.dmg",
        verified: "github.com/profullstack/pairux.com/"
  end

  on_intel do
    sha256 "83f57f44b2caa9aa760f571693bf18901abd8188f1ed462c77f619be90229883"
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
