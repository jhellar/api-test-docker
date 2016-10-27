FROM selenium/standalone-chrome:3.0.0-dubnium

RUN sudo apt-get update -y
RUN sudo apt-get install -y curl # lsof

RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y git

WORKDIR /home/seluser
RUN git clone https://github.com/jhellar/api-test.git

WORKDIR /home/seluser/api-test
RUN npm install
RUN sudo npm install -g cordova

RUN mkdir config

WORKDIR /home/seluser/api-test/test_app
# RUN cordova platform remove browser
RUN cordova platform add browser
# RUN lsof platforms/browser/www/*
# RUN rm -rf platforms/browser/www

WORKDIR /home/seluser/api-test/test_app/platforms/browser/www
RUN ls -al
