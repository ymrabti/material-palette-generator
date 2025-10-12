FROM nginx:alpine

WORKDIR /app

# Use Nginx to serve the Angular app
COPY . /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
