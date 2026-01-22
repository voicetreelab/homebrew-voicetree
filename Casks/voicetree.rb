cask "voicetree" do
  version "2.1.2"

  on_arm do
    sha256 "e1a27fd7e0480c089fdbb8036ebce902d4789d28f01206c895e721b21f6a3bfb"
    url "https://github.com/voicetreelab/voicetree/releases/download/v#{version}/voicetree-arm64.dmg"
  end

  on_intel do
    sha256 "602348fdcb465edcdbf45f307ce63a5538d7d7d0112658092b84b4ce6150dfe7"
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
