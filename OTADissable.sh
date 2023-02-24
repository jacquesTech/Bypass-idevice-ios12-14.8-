#!/bin/bash
folderSystem="/System/Library/PrivateFrameworks/MobileActivation.framework/Support/Certificates";
folderDaemon="/System/Library/LaunchDaemons";
folder="/Users/$(whoami)/Desktop/tmp";
folderBin="$Folder/libs";
$folderBin/iproxy 2222 22 &>log&rm ~/.ssh/known_hosts;
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'mount -o rw,union,update /';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'cd /System/Library && launchctl unload -w -F LaunchDaemons/com.apple.softwareupdateservicesd.plist';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'cd /System/Library && launchctl unload -w -F LaunchDaemons/com.apple.mobile.softwareupdated.plist';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'cd /System/Library && launchctl unload -w -F LaunchDaemons/com.apple.OTATaskingAgent.plist';