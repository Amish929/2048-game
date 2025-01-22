# Use a lightweight Nginx image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the 2048 game files to the working directory
COPY . /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]

