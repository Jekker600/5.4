FROM node:latest
WORKDIR /home/
RUN apt update -y
RUN apt install unzip -y
RUN apt install wget -y
RUN wget https://github.com/simplicitesoftware/nodejs-demo/archive/refs/heads/master.zip
RUN unzip -p master.zip
WORKDIR /home/nodejs-demo-master
RUN npm install
CMD node app.js
EXPOSE 3000
