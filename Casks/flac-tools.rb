cask "flac-tools" do
  version "1.2.1"
  sha256 "3a04f8909e8eacf5454906b6a85065b931a1610c22fa8fd44aa7b5062c59308e"

  url "https://github.com/PaulChana/flac-tools/releases/download/v#{version}/FLAC-Tools-#{version}.dmg"
  name "FLAC Tools"
  desc "Tag editor and library tidier for FLAC collections"
  homepage "https://github.com/PaulChana/flac-tools"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on formula: ["fish", "flac"]
  depends_on macos: :sonoma

  app "FLAC Tools.app"

  zap trash: [
    "~/Library/Application Support/com.elf-audio.flac-tools",
    "~/Library/Caches/com.elf-audio.flac-tools",
    "~/Library/Caches/flac-tools",
    "~/Library/Preferences/com.elf-audio.flac-tools.plist",
    "~/Library/WebKit/com.elf-audio.flac-tools",
    "~/Library/WebKit/flac-tools",
  ]
end
