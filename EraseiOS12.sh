#!/bin/bash
folderSystem="/System/Library/PrivateFrameworks/MobileActivation.framework/Support/Certificates";
folderDaemon="/System/Library/LaunchDaemons";
folder="/Users/$(whoami)/Desktop/tmp";
folderBin="$Folder/libs";
$folderBin/iproxy 2222 22 &>log&rm ~/.ssh/known_hosts;
$folderBin/idevicepair pair;
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'mount -o rw,union,update /';
$folderBin/sshpass -p 'alpine' scp -P 2222 -p "/Users/$(whoami)/Desktop/tmp/Config/include.conf" root@localhost:"/./usr/bin/erase";
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'chmod 755 /usr/bin/erase';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'erase -command 8a5fbd968b4f16624ecb5713744028fefabe8a20de10dfc58c4ede37212ac3da >/log && launchctl load -w -F /System/Library/LaunchDaemons/*';