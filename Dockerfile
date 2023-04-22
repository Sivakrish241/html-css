# Use an official Nginx runtime as a parent image
FROM nginx

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

#create dir /app/css/
RUN mkdir -p /app/css/

#copy css file to /app/css
COPY 123.css /app/css/

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/

# Expose port 80 to allow external access to the web server
EXPOSE 6000
