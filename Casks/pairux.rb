cask "pairux" do
  version "0.22.0"

  on_arm do
    sha256 "61ce25d85542982ae063d18d4f2d77035333f5298f9c8360d8e8e389673add5f"
    url "https://github.com/profullstack/pairux.com/releases/download/v#{version}/PairUX-#{version}-arm64.dmg",
        verified: "github.com/profullstack/pairux.com/"
  end

  on_intel do
    sha256 "40652c91aba43e0b8d14de0506689db9c6f592c3099de0f16baa1e9afd90d96d"
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
