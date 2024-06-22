FROM node:18.14.0

WORKDIR /app
COPY package.json ./

RUN npm install

COPY /public .
COPY /src .

EXPOSE 8000

ENV NODE_ENV=development

CMD ["npm", "run", "dev"]