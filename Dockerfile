###
### BIND
###
FROM debian:jessie
MAINTAINER "cytopia" <cytopia@everythingcli.org>


###
### Labels
###
LABEL \
	name="cytopia's Bind Image" \
	image="bind" \
	vendor="cytopia" \
	license="MIT" \
	build-date="2017-05-10"


###
### Install
###
RUN apt-get update && apt-get -y install \
    bind9 \
  && rm -r /var/lib/apt/lists/*


###
### Bootstrap Scipts
###
COPY ./scripts/docker-entrypoint.sh /


###
### Ports
###
EXPOSE 53
EXPOSE 53/udp


####
#### Entrypoint
####
ENTRYPOINT ["/docker-entrypoint.sh"]
