cask "voicetree" do
  version "2.8.2"

  on_arm do
    sha256 "d76d25d43fffe5bf758ae8303c4a5d071f4364a14f8b3aae7b40e5bcf93f9dc3"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "79c8c35e73b0d43d1c108cdb1e84b61973f3aae3f2f6210111ffbca066b08100"
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
