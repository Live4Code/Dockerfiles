# Pull base image.
FROM live4code/base-iojs

ENV NPM_CONFIG_LOGLEVEL warn

#phantomjs dependencies
RUN apt-get update && apt-get -y install bzip2 libfreetype6 libfreetype6-dev libfontconfig && rm -rf /var/lib/apt/lists/*
#RUN npm install -g phantomjs-prebuilt@2.1.14 --unsafe-perm
RUN npm install -g phantomjs@2.1.1 --unsafe-perm

#selenium server need java
# RUN apt-get update && apt-get -y install default-jre

#install npm dependencies for testing tools
RUN npm install -g mocha@2.1.0
RUN npm install -g karma-cli@1.0.1
RUN npm install -g karma-phantomjs-launcher@1.0.4 --unsafe-perm
RUN npm install -g karma-jasmine@1.1.2
RUN npm install -g http-server@0.7.4
RUN npm install -g protractor-html-screenshot-reporter@0.0.19
RUN npm install -g karma-htmlfile-reporter@0.1.2

#protractor e2e test
RUN npm install -g protractor@1.6.1

#react dependencies
RUN npm install -g flux@2.0.1
RUN npm install -g keymirror@0.1.0
RUN npm install -g object-assign@1.0.0
RUN npm install -g react@0.12.0
RUN npm install -g browserify@6.2.0
RUN npm install -g envify@3.0.0
RUN npm install -g jest-cli@0.6.0
RUN npm install -g reactify@0.15.2
RUN npm install -g watchify@2.4.0
RUN npm install -g react-router@0.12.4
RUN npm install -g es5-shim@4.1.0

#install selenium webdriver
# RUN webdriver-manager update
