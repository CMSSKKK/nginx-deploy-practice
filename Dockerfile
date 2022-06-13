FROM node:16.15.1-bullseye  

WORKDIR /app

COPY package.json /code/package.json
COPY package-lock.json /code/package-lock.json

RUN npm install

COPY . .

CMD ["npm", "run", "start"] 