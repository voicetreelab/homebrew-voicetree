cask "voicetree" do
  version "2.4.2"

  on_arm do
    sha256 "dd6f68307c8c39205554f128cb3ee946534012587db053ec469e18c422313708"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "01b64d93403e90b24cf924c04951cfb85bbfdd04c9a8a9fd57a83687d018a1c0"
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
