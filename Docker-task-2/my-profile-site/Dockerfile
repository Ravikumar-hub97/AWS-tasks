# Use Nginx to serve static files
FROM nginx:alpine

# Remove the default Nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy our index.html to Nginx's default location
COPY index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
