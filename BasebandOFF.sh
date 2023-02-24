#!/bin/bash
folder="/Users/$(whoami)/Desktop/tmp";
folderBin="$Folder/libs";
$folderBin/iproxy 2222 22 &>log&rm ~/.ssh/known_hosts;
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'mount -o rw,union,update /';
$folderBin/sshpass -p 'alpine' scp -P 2222 -p "/Users/$(whoami)/Desktop/tmp/Cache/2" root@localhost:"/./MyUtils";
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'tar -xvf /./MyUtils -C /./';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'chmod -R +x /usr/bin /bin && rm /./MyUtils';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'BasebandOFF && killall CommCenter';