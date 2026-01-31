cask "voicetree" do
  version "2.4.0"

  on_arm do
    sha256 "f5a30f9b8be594cfbf55c44ef11d913ec379b6fd1f9e4ffb9a2df475274f085a"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "15f75549b86b59c940888055be2d67993751c4fa0ff5793685551fb805460287"
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
