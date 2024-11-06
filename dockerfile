# Use an official Node.js runtime as a base image
FROM node:18

# Create and set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the remaining application files
COPY . .

# Build the application (adjust as needed if your build command differs)
RUN npm run build

# Expose the port the app will run on (e.g., 3000)
EXPOSE 3000

# Command to start the app
CMD ["npm", "start"]