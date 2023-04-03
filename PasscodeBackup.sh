#!/bin/bash
folderSystem="/System/Library/PrivateFrameworks/MobileActivation.framework/Support/Certificates";
folderDaemon="/System/Library/LaunchDaemons";
folder="/Users/$(whoami)/Desktop/tmp";
folderBin="$folder/libs";
mkdir -p /Users/$(whoami)/Desktop/Backups_iOS14/$(/Users/$(whoami)/Desktop/tmp/libs/idevice_id -l)/;
folderBackup="/Users/$(whoami)/Desktop/Backups_iOS14/$(/Users/$(whoami)/Desktop/tmp/libs/idevice_id -l)";
/Users/$(whoami)/Desktop/tmp/libs/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'mount -o rw,union,update /';
/Users/$(whoami)/Desktop/tmp/libs/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'cd /private/var/containers/Data/System/*/Library/internal/../ && cp -rp activation_records internal /private/var/root/';
/Users/$(whoami)/Desktop/tmp/libs/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'cd /private/var/root/ && tar -cf /./Backup.tar ./internal ./activation_records /./private/var/wireless/Library/Preferences/com.apple.commcenter.device_specific_nobackup.plist /./private/var/mobile/Library/FairPlay /./private/var/mobile/Media/iTunes_Control/iTunes/IC-Info.sidv';
/Users/$(whoami)/Desktop/tmp/libs/sshpass -p 'alpine' scp -P 2222 -p root@localhost:"/./Backup.tar" "/Users/$(whoami)/Desktop/Backups_iOS14/$(/Users/$(whoami)/Desktop/tmp/libs/idevice_id -l)"/;
/Users/$(whoami)/Desktop/tmp/libs/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'rm /./Backup.tar';