cask "voicetree" do
  version "1.9.2"

  on_arm do
    sha256 "6849897e4f86227f1113c7427e8089e5450d3f7bde326e27da06e789eb7827d5"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "c25e0e4b437924b4c074b89100261f1151fc17acb4b08d32ba03704a4d49692f"
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
