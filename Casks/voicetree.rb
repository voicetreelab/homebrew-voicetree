cask "voicetree" do
  version "1.9.4"

  on_arm do
    sha256 "e9db44c84f48222a67ff891f164029d20ec4e27d8f96cbb199c6ab652a9877a3"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "81537089162c9f182d9019a80f83c4e8a90eaabb62e67d2843b5652fce0a44d5"
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
