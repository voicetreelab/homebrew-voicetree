cask "voicetree" do
  version "2.4.3"

  on_arm do
    sha256 "7406f6cdb7d18e15556a1f4c664b098a572c664ce4790683e913e294bd6af07c"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "9c58face44e533de78f1974b62f51659ab1d262a15b4a5dd7889517cbbf903de"
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
