cask "voicetree" do
  version "2.3.0"

  on_arm do
    sha256 "03aafb98d93559f34310f2ee5249a51fa50e07c4afb225020055fa2969fcfd12"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "650d7baef99d88ee4af4ada06c3ac8b685a55e1f8e9753873d26aa5301e2c8fd"
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
