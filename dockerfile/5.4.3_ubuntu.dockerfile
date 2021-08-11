FROM ubuntu:latest
RUN apt update && install unzip wget nodejs npm -y
RUN wget https://github.com/simplicitesoftware/nodejs-demo/archive/refs/heads/master.zip
RUN unzip -p master.zip
WORKDIR /nodejs-demo-master
RUN npm install
CMD node app.js
EXPOSE 3000
