FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy your application files into the container
COPY . .

# Install project dependencies
RUN npm install express stripe dotenv

# Expose the port that your Node.js app will listen on (adjust this as needed)
EXPOSE 3000

# Specify the command to start your Node.js application
CMD ["node", "server.js"]
