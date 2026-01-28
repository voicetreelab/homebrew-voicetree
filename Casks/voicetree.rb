cask "voicetree" do
  version "2.2.7"

  on_arm do
    sha256 "313125068d7d4cee374104f8539e04f3f85194d82f029406bc6867c7a83060f9"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "cea9db1fad3ef7d7ff4116e819fa02528a905ae95f457e5af7033de6fcd30cfe"
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
