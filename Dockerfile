FROM nginx:alpine
COPY audio.ogg /usr/share/nginx/html/audio.ogg
RUN mkdir -p /etc/nginx/templates && \
    echo 'server { listen ${PORT}; location / { root /usr/share/nginx/html; add_header Content-Type audio/ogg; add_header Access-Control-Allow-Origin *; } }' > /etc/nginx/templates/default.conf.template
ENV PORT=8080
EXPOSE 8080
