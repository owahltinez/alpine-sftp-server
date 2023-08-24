$!/bin/sh

for user in $(ls /home)
do
    echo "Mounting share for $user..."
    mkdir -p "/home/$user/share"
    mount --bind "/share" "/home/$user/share"
    chown -R $user "/home/$user/share"
done
