Secure SSH (Debian)
---

# Commands

# Client side

ssh-keygen -t ed25519 -o -a 100
ssh-keygen -t rsa -b 4096 -o -a 100

rsync $HOME/.ssh/id_rsa.pub server:~/tmp/id_rsa.pub
rsync $HOME/.ssh/id_ed25519.pub server:~/tmp/id_ed25519.pub

## Server side

sudo groupadd ssh-user
sudo usermod -a -G ssh-user dmix

awk '$5 > 2000' /etc/ssh/moduli > "${HOME}/moduli"
wc -l "${HOME}/moduli"
mv "${HOME}/moduli" /etc/ssh/moduli

ssh-keygen -G /etc/ssh/moduli.all -b 4096
ssh-keygen -T /etc/ssh/moduli.safe -f /etc/ssh/moduli.all
mv /etc/ssh/moduli.safe /etc/ssh/moduli
rm /etc/ssh/moduli.all

cd /etc/ssh
rm ssh_host_*key*
ssh-keygen -t ed25519 -f ssh_host_ed25519_key -N "" < /dev/null
ssh-keygen -t rsa -b 4096 -f ssh_host_rsa_key -N "" < /dev/null

touch /etc/ssh/authorized_keys
cat ~/tmp/id_rsa.pub >> /etc/ssh/authorized_keys
cat ~/tmp/id_ed25519.pub >> /etc/ssh/authorized_keys
