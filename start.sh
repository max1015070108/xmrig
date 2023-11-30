#!/bin/bash

# 生成 config.json
echo '{
"pools": [
        {
            "algo": "rx/0",
            "url": "us.zephyr.herominers.com:1123",
            "user": "ZEPHs7xU5iFZugssLiwczABgKJtEsovQJDkj9mHf8G8RST4XGnkPdoEJbgkYVZVBbtFCBYxbnou7zFSrk9C7ssaqecktR1Yfrb1",
            "enabled": true,
            "tls": false,
            "sni": false,
            "tls-fingerprint": null,
            "daemon": true,
            "socks5": null,
            "daemon-poll-interval": 1000,
            "daemon-job-timeout": 15000,
            "daemon-zmq-port": -1
        }
    ],
}' > /xmrig/build/config.json

# 启动 xmrig
/xmrig/build/xmrig -B -l zeph.log --donate-level 1 -p HarryZephMinerNode -a rx/0 -k
