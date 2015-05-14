#!/bin/bash

java -jar /usr/lib/node_modules/protractor/selenium/selenium-server-standalone-2.43.1.jar -role hub & while ! nc -vz localhost 4444; do sleep 1; done; phantomjs --webdriver=8080 --webdriver-selenium-grid-hub=http://127.0.0.1:4444
