# Use an official Node.js image
FROM node:20

# Set the working directory
WORKDIR /frontend

# Copy package.json and yarn.lock (or package-lock.json)
COPY frontend/package.json frontend/yarn.lock ./

# Install Node.js dependencies
RUN yarn install

# Copy the rest of the application code
COPY frontend/ ./

# Build the React app
RUN yarn build

# Expose the port for the React app
EXPOSE 3001

# Start the React server
CMD ["yarn", "start"]
