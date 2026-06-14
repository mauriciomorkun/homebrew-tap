cask "audiorouternow" do
  version "3.4.0"
  sha256 "a4e92463b9e313eed23234ec2886ede596804b4dbf0d732b3263f0b32fdf3fe7"

  url "https://github.com/mauriciomorkun/AudioRouterNow/releases/download/v#{version}/AudioRouterNow.dmg"
  name "AudioRouterNow"
  desc "Free, open-source macOS audio routing — send system audio to multiple outputs simultaneously"
  homepage "https://audiorouternow.mauriciomorkun.com"

  # No Sparkle yet — auto-updates come in v3.5
  auto_updates false

  app "AudioRouterNow.app"

  uninstall quit: "com.audiorouter.now"

  zap trash: [
      "~/.audiorouter",
      "~/Library/Logs/AudioRouterNow",
      "~/Library/LaunchAgents/com.audiorouter.now.helper.plist",
    ],
    delete: [
      "/Library/Audio/Plug-Ins/HAL/AudioRouterNow.driver",
    ]
end
