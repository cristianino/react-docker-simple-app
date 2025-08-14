FROM node:trixie-slim AS build

WORKDIR /app

COPY ./package.json ./

RUN npm install --save-dev jest @testing-library/react @testing-library/jest-dom babel-jest @babel/preset-env @babel/preset-react jest-environment-jsdom

COPY ./ ./

RUN npm run build

FROM nginx

COPY --from=build /app/dist /usr/share/nginx/html/