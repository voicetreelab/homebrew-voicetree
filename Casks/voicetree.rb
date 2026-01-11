cask "voicetree" do
  version "1.9.23"

  on_arm do
    sha256 "ead4221753d1fc97af5c04143702edb0ed50a4ad6579f15f8bdc6f76df8dd7ec"
    url "https://github.com/voicetreelab/voicetree/releases/download/v\#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "36332afad59f3ce040354ff38acc4b0d3ca946f25b1ec5128d7476df07e58380"
    url "https://github.com/voicetreelab/voicetree/releases/download/v\#{version}/voicetree-x64.dmg"
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
