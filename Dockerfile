# Use the official Node.js image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# If Nuxt CLI is needed globally, install it globally
RUN npm install -g nuxi

# Copy the rest of the application code to the working directory
COPY . .

# Build the Nuxt.js application
RUN npm run build

# Expose the port on which your application will run
EXPOSE 3000

# Start the Nuxt.js application
CMD ["npx", "nuxt", "build"]

