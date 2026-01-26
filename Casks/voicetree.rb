cask "voicetree" do
  version "2.2.0"

  on_arm do
    sha256 "873cd3d90ae2a0cfdf1258a388b86ff1000aebf61640869d2b1f3814cdea0684"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "d4f97a4c66d48d9a2b4758d06614eabefed538b92905521948590f92599def46"
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
