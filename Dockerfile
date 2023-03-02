FROM node

WORKDIR /usr/anita-nextjs-app

COPY package*.json /usr/anita-nextjs-app

RUN npm install

COPY . /usr/anita-nextjs-app

RUN npm run build

COPY . /usr/anita-nextjs-app

EXPOSE 3000

ENTRYPOINT [ "npm", "run", "start" ]

