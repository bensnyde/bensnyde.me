FROM nginx:alpine
COPY html/ /usr/share/nginx/html

# For Google Cloud Run 
# tell nginx to listen on ${PORT}
RUN sed -i 's/80/${PORT}/g' /etc/nginx/nginx.conf
