cask "silicon-refinery-chat" do
  version "0.0.211"
  sha256 "48b47cda9ce7e2267b12299e476201167095850c3b94c852608c662c9ef19ad2"

  url "https://github.com/adpena/silicon-refinery-chat/releases/download/v#{version}/SiliconRefineryChat-#{version}.dmg"
  name "SiliconRefineryChat"
  desc "Standalone app for local Apple Foundation Models chat"
  homepage "https://github.com/adpena/silicon-refinery-chat"

  depends_on macos: ">= :big_sur"

  app "SiliconRefineryChat.app"
  binary "#{appdir}/SiliconRefineryChat.app/Contents/Resources/silicon-refinery-chat",
         target: "silicon-refinery-chat"

  zap trash: [
    "~/Library/Application Support/com.siliconrefinery.chat",
    "~/Library/Preferences/com.siliconrefinery.chat.plist",
  ]
end
