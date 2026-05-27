FROM nginx:alpine
COPY audio.ogg /usr/share/nginx/html/audio.ogg
RUN echo 'server { listen 80; location /audio.ogg { root /usr/share/nginx/html; add_header Content-Type audio/ogg; add_header Access-Control-Allow-Origin *; } }' > /etc/nginx/conf.d/default.conf
EXPOSE 80
