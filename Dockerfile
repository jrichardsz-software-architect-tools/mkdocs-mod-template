FROM python:3 as BUILDER

RUN mkdir -p /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN pip install -r requirements.txt
RUN mkdocs build

FROM node:14
RUN mkdir -p /usr/src/app
COPY package.json /usr/src/app
COPY server.js /usr/src/app
COPY --from=BUILDER /usr/src/app/site /usr/src/app/site
RUN ls -la /usr/src/app/site

WORKDIR /usr/src/app/site
RUN npm install
EXPOSE 8080
CMD ["npm", "run", "start" ]
