# Dockerfile - simple production image (no lockfile required)
FROM node:18-alpine3.18

WORKDIR /usr/src/app

# Copy only package.json (no lockfile needed)
COPY package.json ./

# Install only production dependencies (none right now, but safe if you add later)
RUN npm install --production --loglevel verbose

# Copy application source
COPY app.js ./

# Set environment
ENV NODE_ENV=production
ENV PORT=3000

# Run as non-root user (node is built-in in official node images)
USER node

EXPOSE 3000

CMD ["node", "app.js"]
