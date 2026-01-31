cask "voicetree" do
  version "2.4.1"

  on_arm do
    sha256 "1283834ade31eccbad9eff784bae7383f224430a7dfe5bae18c9642d25da6a84"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "be1118519b8d49073233ffe5b51a8e0479e4aede36e7e0e724789659d6a8dd5f"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-x64.dmg"
  end

  name "VoiceTree"
  desc "Transform voice into navigable concept graphs"
  homepage "https://github.com/voicetreelab/voicetree"
  depends_on macos: ">= :monterey"
  app "VoiceTree.app"

  zap trash: [
    "~/Library/Application Support/VoiceTree",
    "~/Library/Preferences/com.voicetree.webapp.plist",
  ]
end
