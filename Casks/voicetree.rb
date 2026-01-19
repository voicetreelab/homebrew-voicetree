cask "voicetree" do
  version "2.0.3"

  on_arm do
    sha256 "52681fd5d930810d7663c4b02aa5b9225f87d6410f1698d3bab00f2a2eb4b959"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "bd41d3d5c51e986346961a375c68d3febc1cb72f789bd31533d4b12e3d5716df"
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
