# Use official Node.js image
FROM node:18

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define environment variable for MongoDB URI (optional, usually provided at runtime)
# ENV MONGO_URI="your-mongodb-uri"

# Run the application
CMD ["node", "index.js"]
