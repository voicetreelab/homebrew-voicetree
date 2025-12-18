cask "voicetree" do
  version "1.7.6"
  sha256 "0153a31624c0727a3f8d7fd172fa5b9c500eb2da26151312b888aa979a02fcb8"

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
