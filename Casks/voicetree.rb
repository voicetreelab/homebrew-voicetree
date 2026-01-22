cask "voicetree" do
  version "2.1.1"

  on_arm do
    sha256 "18328f20fadf65f4915914de932ae50c2e136ee40a3fe178271bd7b7448b01d5"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "a91ff1b52d44727ef5babeb680da4af4e5d19ae0a1218bb7f99cecb9bcebf006"
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
