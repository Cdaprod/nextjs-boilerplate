# Stage 1: Use a base Node.js image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY . ./

# Install all dependencies listed in the package.json
RUN npm install

# Install global tools (optional), like create-next-app and Sanity CLI
RUN npm install -g create-next-app @sanity/cli

# Expose the port for the Next.js app
EXPOSE 3000

# Default command to keep the container running, without initializing the app
CMD ["sh"]