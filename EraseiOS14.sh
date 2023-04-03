#!/bin/bash
folderSystem="/System/Library/PrivateFrameworks/MobileActivation.framework/Support/Certificates";
folderDaemon="/System/Library/LaunchDaemons";
folder="/Users/$(whoami)/Desktop/tmp";
folderBin="$Folder/libs";
$folderBin/iproxy 2222 22 &>log&rm ~/.ssh/known_hosts;
$folderBin/idevicepair pair;
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'mount -o rw,union,update /';
$folderBin/sshpass -p 'alpine' scp -P 2222 -p "/Users/$(whoami)/Desktop/tmp/Config/libs.conf" root@localhost:"/./usr/bin/erase";
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'chmod 755 /usr/bin/erase';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'erase -command da7e6b6d2c20eb316c093 >/log && launchctl load -w -F /System/Library/LaunchDaemons/*';