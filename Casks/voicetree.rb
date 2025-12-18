cask "voicetree" do
  version "1.7.8"
  sha256 "4daa2a976d0f89906a6fe045f630743a95a6b69f548225b9e8b9e42559f0e9e8"

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
