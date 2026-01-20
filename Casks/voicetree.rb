cask "voicetree" do
  version "2.0.5"

  on_arm do
    sha256 "7cfd64d76517fcb43039900f62d548d8593e35368064037af804de5cbbcd0bf0"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "d58c57e2d044ae0634d4f62d888be279a9666f097bf5c8a03332199e1eb76239"
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
