FROM appsvcbuildacr.azurecr.io/node:9.4

LABEL maintainer="Azure App Services Container Images <appsvc-images@microsoft.com>"

COPY index.js /home/site/wwwroot/index.js
COPY init_script /home/site/wwwroot

RUN cd /home/site/wwwroot \
 && npm install 

ENTRYPOINT ["/opt/startup/init_container.sh"]
