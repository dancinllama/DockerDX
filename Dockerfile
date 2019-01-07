FROM library/ubuntu
RUN apt-get update && \
    apt-get -y install wget && \
    apt-get -y install xz-utils && \
    cd ~ && \
    wget https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz -O sfdx.tar.xz && \
    apt-get update && \
    tar -xvJf ~/sfdx.tar.xz && \
    cd sfdx && \
    ./install && \
    apt-get -y install git && \
    apt-get -y install vim-common && \
    sfdx force --help && \
    sfdx plugins:install salesforcedx@pre-release && \
    npm install && \
    npm install @salesforce/lwc-jest --save-dev;
    
