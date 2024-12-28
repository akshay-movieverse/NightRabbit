# Stage 1: Build
FROM node:20-slim AS builder

# Set the working directory
WORKDIR /app

# Copy package files into the working directory
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy application source code
COPY . ./

# Expose the port for the app
EXPOSE 3001

# Start the application
CMD ["npm", "start"]
