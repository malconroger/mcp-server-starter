FROM node:18

WORKDIR /app

COPY . .

RUN git config --global url."https://github.com/".insteadOf "git@github.com:" \
    && git config --global url."https://github.com/".insteadOf "ssh://git@github.com/" \
    && rm -rf node_modules package-lock.json \
    && npm install --legacy-peer-deps \
    && npm cache clean --force


CMD ["npm", "start"]
