# Step 1: Use Ubuntu as the base image
FROM ubuntu:22.04

# Step 2: Install necessary packages (Nginx)
RUN apt-get update && apt-get install -y nginx

# Step 3: Set the working directory
WORKDIR /var/www/html

# Step 4: Copy all the game files into the working directory
COPY . .

# Step 5: Expose the default port for Nginx
EXPOSE 80

# Step 6: Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]

