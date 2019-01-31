FROM appsvcbuildacr.azurecr.io/node:9.4

LABEL maintainer="Azure App Services Container Images <appsvc-images@microsoft.com>"

RUN mkdir /home/site/wwwroot/init_script

COPY index.js /home/site/wwwroot/index.js
COPY init_script /home/site/wwwroot/init_script
