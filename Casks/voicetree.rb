cask "voicetree" do
  version "1.9.6"

  on_arm do
    sha256 "f40235bece534ad1223e874ec1285caff0ad9148c32710357fec564be96e89ff"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "b6ce1f61c06e26dd9e65be1aaedfd0dbe9ba83c83548aebcdb99b49a4b897e96"
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
