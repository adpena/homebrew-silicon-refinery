cask "silicon-refinery-chat" do
  version "0.0.210"
  sha256 "c2824b6b09ff680d174115d4fb1fd478cf895565a31f9cc305721467899436f5"

  url "https://github.com/adpena/silicon-refinery-chat/releases/download/v#{version}/SiliconRefineryChat-#{version}.dmg"
  name "SiliconRefineryChat"
  desc "Standalone app for local Apple Foundation Models chat"
  homepage "https://github.com/adpena/silicon-refinery-chat"

  depends_on macos: ">= :big_sur"

  app "SiliconRefineryChat.app"
  binary "#{appdir}/SiliconRefineryChat.app/Contents/MacOS/SiliconRefineryChat",
         target: "silicon-refinery-chat"

  zap trash: [
    "~/Library/Application Support/com.siliconrefinery.chat",
    "~/Library/Preferences/com.siliconrefinery.chat.plist",
  ]
end
