cask "voicetree" do
  version "2.2.1"

  on_arm do
    sha256 "aa6e2e90a4c4a4331d1b05fae265968ffdd93acc9199ceb457a8b5acf4b3cece"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "4b7292759e15832885522d6ceed27b4330c53d146900f846a43e933236b82aab"
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
