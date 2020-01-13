FROM nginx:alpine
COPY html/ /usr/share/nginx/html
RUN sed -i 's/80/${PORT}/g' /etc/nginx/nginx.conf
