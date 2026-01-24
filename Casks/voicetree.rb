cask "voicetree" do
  version "2.1.4"

  on_arm do
    sha256 "1dac0045a99826c275b444ed8febfd294aa76db8f5b42954889c351378528c18"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "e179b28ddaa3e4ce44752b3213d9d3911c8e4b151e8753003e7bd7764cc1fd42"
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
