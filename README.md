# Telegram-Proxy
SOCKS5 Proxy-Server for Telegram

There are 2 parameters in azure-proxy.yml
    admin_username: telegram
    admin_password: 66yjv7Fe8v7GG

You should change they to yours.

You can change proxy_username on 23 line in create_proxy.sh. Actual name is tluser. 
    useradd --shell /usr/sbin/nologin tluser

And you have to create password for proxy_user.