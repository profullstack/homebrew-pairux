cask "pairux" do
  version "0.23.0"

  on_arm do
    sha256 "c9cd0c471d4eedc1772f8fbcd60fa41eeda1508ab10798d81b3fd94691444978"
    url "https://github.com/profullstack/pairux.com/releases/download/v#{version}/PairUX-#{version}-arm64.dmg",
        verified: "github.com/profullstack/pairux.com/"
  end

  on_intel do
    sha256 "b4e72cbfe208cb7f55f38c8ab08b180b57744b93e438298a7d5a84b434a2102b"
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
