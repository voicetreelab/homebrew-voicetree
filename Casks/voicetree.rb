cask "voicetree" do
  version "2.1.5"

  on_arm do
    sha256 "2a6630ea168cb0e89227c110f0c1750a36c364afda6bfbd4cf9aba4c3d54f047"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "5bbfc631cdaf96a5225d1fc89ebdc1f6f4dd97e6096a41e08137925abe9c620b"
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
