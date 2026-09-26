cask "audiorouternow" do
  version "3.4.6"
  sha256 "c97b1bfb6b9ec6238f642821922f20bb549b99b05f588168e810a836d883a3c4"

  url "https://github.com/mauriciomorkun/AudioRouterNow/releases/download/v#{version}/AudioRouterNow.dmg"
  name "AudioRouterNow"
  desc "Free, open-source macOS audio routing, send system audio to multiple outputs simultaneously"
  homepage "https://audiorouternow.mauriciomorkun.com"

  # Sparkle startet ab 3.4.6 tatsaechlich und ruft den Appcast ab (CASE-006).
  # Belegt am 26.09.2026: Appcast mit 7140 Bytes im URL-Cache der installierten App,
  # Zeitstempel deckungsgleich mit SULastCheckTime. Vor 3.4.6 war der Updater tot,
  # brew upgrade uebersprang die App, und es gab gar keinen Weg zu einer neuen Version.
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
