FROM nginx:alpine
COPY audio.ogg /usr/share/nginx/html/audio.ogg
RUN echo 'server { \
  listen $PORT; \
  location /audio.ogg { \
    root /usr/share/nginx/html; \
    add_header Content-Type audio/ogg; \
    add_header Access-Control-Allow-Origin *; \
  } \
}' > /etc/nginx/templates/default.conf.template
EXPOSE $PORT
ENV PORT=8080
