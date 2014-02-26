# Base image
FROM dockerfile/java

# Time zone
ENV DEBIAN_FRONTEND noninteractive
RUN echo "Europe/Oslo" > /etc/timezone
RUN dpkg-reconfigure tzdata

# Leiningen
ENV LEIN_ROOT 1
RUN curl -s https://raw.github.com/technomancy/leiningen/stable/bin/lein > \
    /usr/local/bin/lein
RUN chmod 0755 /usr/local/bin/lein
RUN lein upgrade
