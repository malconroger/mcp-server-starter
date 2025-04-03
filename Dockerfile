FROM node:18

WORKDIR /app

COPY . .

RUN rm -rf node_modules package-lock.json \
    && npm install --legacy-peer-deps \
    && npm cache clean --force

CMD ["npm", "start"]
