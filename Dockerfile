# FROM arm64v8/nginx:1.20-alpine
FROM openresty/openresty:buster-fat

RUN mkdir -p /run/nginx

ADD nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
ADD template.lua /usr/local/share/lua/5.1/
ADD README.md README.md
ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
ENTRYPOINT ["/usr/local/bin/run.sh"]
