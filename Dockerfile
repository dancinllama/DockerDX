FROM salesforce/salesforcedx
RUN npm install -g eslint && \
    npm install -g prettier && \
    echo 'y' | sfdx plugins:install sfpowerkit;
    
