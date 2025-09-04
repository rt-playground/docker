FROM node:18-alpine

WORKDIR /app

COPY index.js .

RUN npm init -y && npm install express@5.1.0
CMD ["node", "index.js"]