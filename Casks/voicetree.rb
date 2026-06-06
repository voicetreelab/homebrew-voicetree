cask "voicetree" do
  version "3.0.2"

  on_arm do
    sha256 "3eb191b3260dbf1fc3bd7f20d8e5358b5f3d2de2ffd334780fe8b85a8fb72632"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "b53a9c0a5ac09f62fb5fc93164d28ae38c2a091f7054172cdd18e4ad18177bfc"
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
