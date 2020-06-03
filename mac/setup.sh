/usr/libexec/PlistBuddy -c "Delete :persistent-apps" ~/Library/Preferences/com.apple.dock.plist
/usr/libexec/PlistBuddy -c "Delete :persistent-others" ~/Library/Preferences/com.apple.dock.plist
/usr/libexec/PlistBuddy -c "Delete :recent-apps" ~/Library/Preferences/com.apple.dock.plist
/usr/libexec/PlistBuddy -c "Set :autohide 1" ~/Library/Preferences/com.apple.dock.plist
/usr/libexec/PlistBuddy -c "Set :launchanim 0" ~/Library/Preferences/com.apple.dock.plist
/usr/libexec/PlistBuddy -c "Set :orientation right" ~/Library/Preferences/com.apple.dock.plist
osascript -e 'delay 3'  -e 'tell Application "Dock"' -e 'quit' -e 'end tell' -e 'delay 3'
