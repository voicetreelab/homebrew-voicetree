cask "voicetree" do
  version "1.9.2"

  on_arm do
    sha256 "7cbe7b40f2b1fc30961f259ec6bd52700e10ffc5f63aa7883ea234be5647b7d0"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "949b573a6265cd8083f7f0720244ded7401dc7a587cab23b82bc714ddff0c727"
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
