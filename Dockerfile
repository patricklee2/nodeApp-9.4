FROM appsvcbuildacr.azurecr.io/node:9.4

LABEL maintainer="Azure App Services Container Images <appsvc-images@microsoft.com>"

COPY index.js /home/site/wwwroot/index.js
COPY init_script /home/site/wwwroot

RUN npm install express

ENTRYPOINT ["/opt/startup/init_container.sh"]
