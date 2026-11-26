cask "pairux" do
  version "0.27.0"

  on_arm do
    sha256 "bf38e75a3744348d697c0cd19df8e7d7a664996094749db2f55b64f52473e94b"
    url "https://github.com/profullstack/pairux.com/releases/download/v#{version}/PairUX-#{version}-arm64.dmg",
        verified: "github.com/profullstack/pairux.com/"
  end

  on_intel do
    sha256 "8d0a1991bdebb3abfad8e1676869fabf66e02a8d729cdd23c7b443253498a789"
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
