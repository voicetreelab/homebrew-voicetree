cask "voicetree" do
  version "1.8.0"
  sha256 "2a57a1f6faf05184db5510d14443d9522479559f6ffd958eca71fe1b6a5e57a0"

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
