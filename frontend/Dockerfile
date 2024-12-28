# Stage 1: Build
FROM node:20-slim AS builder

# Set the working directory
WORKDIR /frontend

# Copy package.json and yarn.lock (or package-lock.json)
COPY frontend/package.json frontend/package-lock.json ./

# Install dependencies using npm
RUN npm install

# Copy the rest of the application code
COPY frontend/ ./

# Build the frontend
RUN npm run build

# Expose the port for the React app
EXPOSE 3001

# Start the React server
CMD ["npm", "start"]
