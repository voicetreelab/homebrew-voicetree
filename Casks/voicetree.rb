cask "voicetree" do
  version "1.8.2"
  sha256 "85dd0786fd0fce0ffc3e69047151738c3bb1df65fb4f8b24e1cc7bf3f3998555"

  url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree.dmg"
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
