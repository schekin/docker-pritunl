FROM mongo:3.4

# https://docs.pritunl.com/docs/installation
RUN echo 'deb http://repo.pritunl.com/stable/apt jessie main' > /etc/apt/sources.list.d/pritunl.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A && \
    apt-get --assume-yes update && \
    apt-get --assume-yes upgrade && \
    apt-get --assume-yes install pritunl iptables

EXPOSE 80 443 11001/udp 11002/udp 11003/udp 11004/tcp 11005/tcp

CMD mongod --fork --logpath /data/db/mongod.log && echo 'Setup Key:' `pritunl setup-key` && pritunl start
