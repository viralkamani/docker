# Use the official Node.js image
FROM node:20.18.0

# Set the working directory in the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the application code
COPY . .

# Expose the application port
EXPOSE 3050

# Start the application
CMD ["node", "index.js"]