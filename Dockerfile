FROM selenium/standalone-chrome:3.0.0-dubnium

RUN sudo apt-get update -y
RUN sudo apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN sudo apt-get install -y nodejs git

RUN sudo npm install -g cordova
