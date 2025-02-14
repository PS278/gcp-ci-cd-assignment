# Step 1: Use the base image
FROM node:19.7.0-alpine

# Step 2: Set environment variables
ENV NODE_ENV=production

# Step 3: Create a directory and set it up
RUN mkdir /labone && \
    chown node:node /labone
WORKDIR /labone

# Step 4: Set user to node
USER node

# Step 5: Copy all source files
COPY --chown=node:node . .

# Step 6: Install node.js packages
RUN npm install

# Step 7: Expose port 3000
EXPOSE 3000

# Step 8: Set the default execution command
CMD ["node", "src/index.js"]
