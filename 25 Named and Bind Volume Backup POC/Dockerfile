FROM node:18-alpine

WORKDIR /app

COPY index.js .

# Expose the port Flask runs on
EXPOSE 5000


RUN npm init -y && npm install express@5.1.0
CMD ["node", "index.js"]




# ports:
#       - "8080:3000"
#     volumes:
#       - appdata:/data