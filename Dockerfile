FROM debian:10
################################################################################
RUN apt update && \
    apt upgrade && \
    apt -y install openssh-server passwd lsb-release pdns-server pdns-backend-mysql vim && \
    /bin/rm -f /etc/localtime && \
    /bin/cp /usr/share/zoneinfo/America/New_York /etc/localtime && \
    rm -rf /var/www/html/*
################################################################################
ADD config/startServices.sh /opt/startServices.sh
ADD config/fixConfig.sh /opt/fixConfig.sh
ADD config/pdns /tmp/powerdns
################################################################################
RUN chmod 755 /opt/startServices.sh && \
    chmod 755 /opt/fixConfig.sh
################################################################################
CMD [ "/opt/startServices.sh" ]
