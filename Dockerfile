# Use the official Node.js image as the base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy the rest of the application files
COPY . .

# Expose the port the app runs on
EXPOSE 10000

# Define the command to run your application
CMD ["sh", "-c", "sed -n '/START OF editor.js$/,$p' glossary.html | FILE=glossary.html node"]
