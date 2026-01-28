cask "voicetree" do
  version "2.2.6"

  on_arm do
    sha256 "5d43ea7f509800ca562c447e0067b69bf29258ee0023684f2341c0c08f2b75eb"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "afbc3f80aedded15710de2285c3e5c2140c91a4cc7ba204392db9c5eda84d53c"
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
