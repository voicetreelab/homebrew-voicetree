cask "voicetree" do
  version "2.9.9"

  on_arm do
    sha256 "ffefa51f7cc2c3f1e503b2f2524f9ac31a933c7723973e37459135d2e318b2f9"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "65b6a28515c8828d6aea7959450758f3effb8b7585e1b6dc975d5ef6cc8cfaea"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-x64.dmg"
  end

  name "Voicetree"
  desc "Transform voice into navigable concept graphs"
  homepage "https://github.com/voicetreelab/voicetree"
  depends_on macos: ">= :monterey"
  app "Voicetree.app"

  postflight do
    system_command "/usr/bin/open", args: ["#{appdir}/Voicetree.app"]
  end

  zap trash: [
    "~/Library/Application Support/VoiceTree",
    "~/Library/Preferences/com.voicetree.webapp.plist",
  ]
end
