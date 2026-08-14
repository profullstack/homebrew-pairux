cask "pairux" do
  version "0.9.75"

  on_arm do
    sha256 "7d1e13575bf047dae8dd306d8205c42e96004b0b41985e67c21466e02a621569"
    url "https://github.com/profullstack/pairux.com/releases/download/v#{version}/PairUX-#{version}-arm64.dmg",
        verified: "github.com/profullstack/pairux.com/"
  end

  on_intel do
    sha256 "36624db9c18eba25b2dfb988b43f07fc320cbc87e2b80cad65c0e079499dfc0f"
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
