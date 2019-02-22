FROM library/ubuntu
RUN apt-get update && \
    apt-get -y install wget && \
    apt-get -y install xz-utils && \
    cd ~ && \
    wget https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz -O sfdx.tar.xz && \
    apt-get update && \
    mkdir sfdx && \
    tar -xvJf ~/sfdx.tar.xz -C sfdx --strip-components 1 && \
    cd sfdx && \
    ./install && \
    apt-get -y install git && \
    apt-get -y install vim-common && \
    sfdx force --help && \
    sfdx plugins:install salesforcedx@pre-release && \
    apt-get -y install npm && \
    npm install && \
    npm install @salesforce/lwc-jest --save-dev && \
    npm install @salesforce/eslint-config-lwc && \
    npm install -g eslint && \
    npm install -g prettier;
    
