# Use official nginx image
FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy site content to nginx html folder
COPY . /usr/share/nginx/html

# Expose port 80 (container)
EXPOSE 80

# Use default nginx command
CMD ["nginx", "-g", "daemon off;"]