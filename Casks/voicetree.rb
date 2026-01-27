cask "voicetree" do
  version "2.2.3"

  on_arm do
    sha256 "4d4aa4523019c8a8c649c5c6c341b3e033f471dbc5ba892c78fc564ca8c7f12c"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "dbbc5a45f9a9aed6d8a19a8607645f32dafd3132556d8fbe401ab0340139f09e"
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
