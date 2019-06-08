FROM mediawiki:1.32

RUN cd /var/www/html/extensions &&\
    git clone -b REL1_32 https://gerrit.wikimedia.org/r/p/mediawiki/extensions/VisualEditor.git &&\
    chown -R www-data:www-data VisualEditor &&\
    cd VisualEditor &&\
    git submodule update --init
