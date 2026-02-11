cask "voicetree" do
  version "2.5.0"

  on_arm do
    sha256 "0c8a3df7c31e670f62fbbbfee0a56214693dfda6375e4def46e8d0d23a3257de"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "6367142a11dc00bac5d69112abf3b9023a4c684df45c7a3db7166777a4090460"
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
