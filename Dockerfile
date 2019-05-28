# Pull base image.
FROM live4code/base-iojs

ENV NPM_CONFIG_LOGLEVEL warn

#phantomjs dependencies
RUN apt-get update && apt-get -y install bzip2 libfreetype6 libfreetype6-dev libfontconfig && rm -rf /var/lib/apt/lists/*
RUN npm install -g phantomjs@1.9.15

#install npm dependencies for testing tools
RUN npm install -g mocha@2.1.0
RUN npm install -g karma-cli@0.0.4
RUN npm install -g karma-phantomjs-launcher@0.1.4
RUN npm install -g karma-jasmine@0.3.5
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
RUN npm install -g jest-cli@0.4.0
RUN npm install -g reactify@0.15.2
RUN npm install -g watchify@2.4.0
RUN npm install -g react-router@0.12.4
RUN npm install -g es5-shim@4.1.0

# for nodejs-stream-adventure validation
RUN npm install -g stream-adventure@4.0.2
RUN npm install -g through2
RUN npm install -g split
RUN npm install -g concat-stream
RUN npm install -g request
RUN npm install -g stream-combiner
RUN npm install -g trumpet
RUN npm install -g websocket-stream
RUN npm install -g duplexer2
RUN npm install -g stream-combiner
RUN npm install -g strip
RUN npm install -g crypto
RUN npm install -g tar

# for nodejs-learn-you-node course validation
RUN npm install -g learnyounode@2.5.0
RUN npm install -g strip-ansi@2.0.1
RUN npm install -g path
RUN npm install -g bl
RUN npm install -g through2-map

# for javascripting course validation
RUN npm install -g javascripting@1.12.0
