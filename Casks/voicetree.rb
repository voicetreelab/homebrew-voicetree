cask "voicetree" do
  version "2.1.7"

  on_arm do
    sha256 "ed5b649c3d5aa1e92a5dbeee659c9ca40523a2aa8b3227014913e8fc17054f6d"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "e58090d78d00b96c620fb313f10d3640a97083a4515b4d881299f1110b0f0839"
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
