FROM node:20

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

EXPOSE : 8000

# Run migrations and seeders before starting the application.
CMD ["npm","start"]

