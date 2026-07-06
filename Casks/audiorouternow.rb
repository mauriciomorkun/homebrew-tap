cask "audiorouternow" do
  version "3.4.4"
  sha256 "65e1ac5a8d340ae71ba5ab3c1b7eb54f251980c20d48e797ec65a69e8c8231b2"

  url "https://github.com/mauriciomorkun/AudioRouterNow/releases/download/v#{version}/AudioRouterNow.dmg"
  name "AudioRouterNow"
  desc "Free, open-source macOS audio routing — send system audio to multiple outputs simultaneously"
  homepage "https://audiorouternow.mauriciomorkun.com"

  # Sparkle 2.9.3 integriert — auto-updates via appcast
  auto_updates true

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
