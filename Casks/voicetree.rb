cask "voicetree" do
  version "2.0.0"

  on_arm do
    sha256 "4de98fc8082703cfc0e646977c71c65af178072ac067ce63b5727b2de41538eb"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "4d1ff8038fafe3139f27b0d13c17dfacfae5815298f05fc799af910319e3b2f4"
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
