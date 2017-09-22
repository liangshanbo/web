#FROM docker.io/google/nodejs
FROM docker.io/liangshanbo/pm2:1.0.2
ENV PORT 3000
ENV NODE_ENV pre

MAINTAINER shanbo "wanglonghai@gomeplus.com"

# Create
RUN mkdir -p /home/service/server
WORKDIR /home/service/server

#tools
#RUN npm config set registry https://registry.npm.taobao.org
#RUN npm config set disturl https://npm.taobao.org/dist
#RUN npm i -g yarn
#RUN yarn global add pm2

# Bundle
COPY . /home/service/server

#EXPOSE 80

CMD pm2 start app.js --no-daemon
#CMD node app.js




