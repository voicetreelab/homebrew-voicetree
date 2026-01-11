cask "voicetree" do
  version "1.9.22"

  on_arm do
    sha256 "df0832541c8a39e9ede77cc481d821d41465edba1cfd921a986ae50310ef16d2"
    url "https://github.com/voicetreelab/voicetree/releases/download/v\#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "4bfbd20649f678092ec5904ede53fb6c7962fdd4a8e852a48326eeb8047ebce1"
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
