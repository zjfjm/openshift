来自高山：最新

ENV CONFIG_JSON =无CERT_PEM =无KEY_PEM =无VER = 3.46

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
&& mkdir -m 777 / v2raybin \
 && cd / v2raybin \
&& curl -L -H “Cache-Control：no-cache” -o v2ray.zip https://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip \
 &&解压缩v2ray.zip \
 && mv / v2raybin / v2ray-v $ VER-linux-64 / v2ray / v2raybin / \
 && mv / v2raybin / v2ray-v $ VER-linux-64 / v2ctl / v2raybin / \
 && mv /v2raybin/v2ray-v$VER-linux-64/geoip.dat / v2raybin / \
 && mv /v2raybin/v2ray-v$VER-linux-64/geosite.dat / v2raybin / \
 && chmod + x / v2raybin / v2ray \
 && rm -rf v2ray.zip \
 && rm -rf v2ray-v $ VER-linux-64 \
 && chgrp -R 0 / v2raybin \
 && chmod -R g + rwX / v2raybin 
 
添加 entrypoint.sh /entrypoint.sh

运行 chmod + x /entrypoint.sh

ENTRYPOINT   /entrypoint.sh

EXP80 8080
