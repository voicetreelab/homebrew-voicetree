cask "voicetree" do
  version "2.0.7"

  on_arm do
    sha256 "ca0af3d4d0c907b8c236cb93de2e875b318098d55428756999923a47ba9cf514"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "048d90be82624a352fac36637c1fb43e0ebbf46e59683343071098d9dd1f07c0"
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
