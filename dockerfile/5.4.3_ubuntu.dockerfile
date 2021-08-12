FROM ubuntu:latest
ENV TZ=Europe/Samara
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update -y && apt install unzip wget nodejs npm -y
RUN wget https://github.com/simplicitesoftware/nodejs-demo/archive/refs/heads/master.zip
RUN unzip master.zip
WORKDIR /nodejs-demo-master
RUN npm install
CMD node app.js
EXPOSE 3000
