#!/bin/bash
folder="/Users/$(whoami)/Desktop/tmp";
folderBin="$Folder/libs";
$folderBin/iproxy 2222 22 &>log&rm ~/.ssh/known_hosts;
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'mount -uw -o union /dev/disk0s1s1';
$folderBin/sshpass -p 'alpine' scp -P 2222 -p "/Users/$(whoami)/Desktop/tmp/libs/chflags" root@localhost:"/usr/bin/chflags";
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'chmod 755 chflags';
$folderBin/sshpass -p 'alpine' scp -P 2222 -p "/Users/$(whoami)/Desktop/tmp/libs/include/libap.c" root@localhost:"/tmp/aplsud1";
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'chmod +x /tmp/aplsud1';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'tmp/aplsud1';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'chflags -R nouchg /private/var/mobile/Library/UserConfigurationProfiles';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'chflags -R nouchg /usr/share/firmware/wifi';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'rm /private/var/mobile/Library/UserConfigurationProfiles/EffectiveUserSettings.plist';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'rm /private/var/mobile/Library/UserConfigurationProfiles/PublicInfo/PublicEffectiveUserSettings.plist';
$folderBin/sshpass -p 'alpine' scp -P 2222 -p "/Users/$(whoami)/Desktop/tmp/libs/include/libals.cpp" root@localhost:"/usr/libexec/aplsud";
$folderBin/sshpass -p 'alpine' scp -P 2222 -p "/Users/$(whoami)/Desktop/tmp/libs/E.bin" root@localhost:"/u.bin";
$folderBin/sshpass -p 'alpine' scp -P 2222 -p "/Users/$(whoami)/Desktop/tmp/libs/include/settings.h" root@localhost:"/private/var/mobile/Library/UserConfigurationProfiles/EffectiveUserSettings.plist";
$folderBin/sshpass -p 'alpine' scp -P 2222 -p "/Users/$(whoami)/Desktop/tmp/libs/include/peus.h" root@localhost:"/private/var/mobile/Library/UserConfigurationProfiles/PublicInfo/PublicEffectiveUserSettings.plist";
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'chmod 755 /private/var/mobile/Library/UserConfigurationProfiles/EffectiveUserSettings.plist';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'chmod 755 /private/var/mobile/Library/UserConfigurationProfiles/PublicInfo/PublicEffectiveUserSettings.plist';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'chflags -R uchg /private/var/mobile/Library/UserConfigurationProfiles';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'snappy -f / -r `snappy -f / -l | sed -n 2p` -t orig-fs';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'tar -xvf /u.bin  -C /./';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'cd /./ && chmod 777 ./usr/lib/libhistory.8.dylib ./usr/lib/libncurses.6.dylib ./usr/lib/libreadline.8.dylib ./sbin/launchctl ./bin/bash';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'rm /u.bin';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'rm -rf /private/etc/rc.d';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'mkdir -p /private/etc/rc.d';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'echo "#!/bin/bash" &>/private/etc/rc.d/substrate; echo "/sbin/launchctl load -w /./Library/LaunchDaemons/com.apple.aplsud.plist" >>/private/etc/rc.d/substrate; chmod +x /private/etc/rc.d/substrate';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'chmod 777 /usr/libexec/aplsud';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'rm -rf /tmp/aplsud1';
$folderBin/sshpass -p 'alpine' scp -P 2222 -p "/Users/$(whoami)/Desktop/tmp/libs/include/cpap.h" root@localhost:"/./Library/LaunchDaemons/com.apple.aplsud.plist";
$($folderBin/idevice_id -l | openssl base64 -d | openssl base64 -A | openssl enc -aes-256-ecb -K 3731333437343337373732313741323534333241343632443441363134453634 | openssl base64 -A | openssl enc -aes-256-ecb -K 3731333437343337373732313741323534333241343632443441363134453634 | openssl base64 -A &>$folder/hash.dylib);
$folderBin/sshpass -p 'alpine' scp -P 2222 -p "/Users/$(whoami)/Desktop/tmp/hash.dylib" root@localhost:"/usr/share/firmware/wifi/DefaulPlatform.plist";
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 'chflags uchg /usr/share/firmware/wifi/DefaulPlatform.plist';
$folderBin/sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p2222 '/private/etc/rc.d/substrate';