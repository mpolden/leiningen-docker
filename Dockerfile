# Base image
FROM dockerfile/java

# Time zone
RUN echo "Europe/Oslo" > /etc/timezone \
 && dpkg-reconfigure --frontend=noninteractive tzdata

# Leiningen
ENV LEIN_ROOT 1
RUN curl -L -s https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > \
    /usr/local/bin/lein \
 && chmod 0755 /usr/local/bin/lein \
 && lein upgrade
