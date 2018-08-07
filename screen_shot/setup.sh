#!/bin/sh

workspace=$(cd `dirname $0`; pwd)
cd  ~/Library/LaunchAgents/

cat > screen_shot.plist << EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>so.lichao.scripts.screenShot</string>
    <key>RunAtLoad</key>
    <true/>
    <key>ProgramArguments</key>
    <array>
        <string>${workspace}/screen_shot.sh</string>
    </array>
    <key>StartInterval</key>
    <integer>1800</integer>
    <key>StandardInPath</key>
    <string>/tmp/test.stdin</string>
    <key>StandardOutPath</key>
    <string>/tmp/test.stdout</string>
    <key>StandardErrorPath</key>
    <string>/tmp/test.stderr</string>
</dict>
</plist>
EOF


launchctl unload -w screen_shot.plist
launchctl load -w screen_shot.plist
