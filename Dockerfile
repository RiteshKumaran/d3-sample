# Use a lightweight Node.js image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy everything from local to the container
COPY . .

# Install 'serve' globally to serve static files
RUN npm install -g serve

# Expose port 3000 (or your preferred port)
EXPOSE 3000

# Serve current directory as a static site
CMD ["serve", "-s", ".", "-l", "3000"]