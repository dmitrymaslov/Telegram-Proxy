apt-get update
apt-get install dante-server
cat >/etc/danted.conf <<EOL
logoutput: stderr
internal: eth0 port = 1080
external: eth0

socksmethod: username
user.privileged: root
user.unprivileged: nobody
user.libwrap: nobody

client pass {
        from: 0/0 to: 0/0
        log: error
}

socks pass {
        from: 0/0 to: 0/0
        log: error
}
EOL
useradd --shell /usr/sbin/nologin tluser
passwd tluser
systemctl restart danted