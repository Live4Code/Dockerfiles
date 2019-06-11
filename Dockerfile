# Pull base image.
FROM live4code/base-web

#cordova, ionic and grunt
RUN npm install -g cordova@4.3.0
RUN npm install -g ionic@1.4.3
RUN npm install -g grunt-cli@0.1.13
RUN npm install -g grunt-contrib-watch@0.6.1
RUN npm install -g grunt-contrib-connect@0.10.1



