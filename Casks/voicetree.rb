cask "voicetree" do
  version "2.2.8"

  on_arm do
    sha256 "f90fd441dec24327ef78628bc4a108ee349e2c6647c3422e4eaa2be11b06b5c9"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "84288b745e1c0a95a9485550b2dd3e08269ec399c4b745deef7327f406d21b5d"
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
