cask "voicetree" do
  version "2.6.0"

  on_arm do
    sha256 "51d2a6503123e2cfe164c15863ba83d2b8f3a7465024a69dded300e5d40222d5"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "2258a8a4286ff86056556b24d2c40429c9e14d79a121c00bb95bbae5c04af6ae"
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
