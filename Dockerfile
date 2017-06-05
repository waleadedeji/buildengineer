FROM library/alpine:latest

MAINTAINER waleAdedeji

# Install nginx
RUN apk add --update nginx && rm -rf /var/cache/apk/*
RUN mkdir -p /tmp/nginx/client-body
 
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY website /usr/share/nginx/html

# Expose ports
EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]